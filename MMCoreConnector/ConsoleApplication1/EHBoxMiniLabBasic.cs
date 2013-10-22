using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CMPMedica.MMCoreConnector.Factories;
using CMPMedica.MMCoreConnector.Services;

namespace EHBoxMiniLab.Tests
{
    class EHBoxMiniLabBasic
    {
        private static IMMCoreServices services;
        private static readonly string PINCODE = "sophien7k";
        private static readonly string TEST_STRING = "Hello EHBox. Test message";
        private static readonly string SenderFirstName = "Michael";
        private static readonly string SenderLastName = "Jackson";
        private static readonly string ReceiverFirstName = "Freddy";
        private static readonly string ReceiverLastName = "Mercury";
        /**
         * The time to wait for waiting the message.
         */
        private static readonly int WAIT_FOR_TIMEOUT = 300;

        /**
         * The receiver.
         */
        private MMCoreConnector.WRMailBoxAccount.mailBoxAccount receiver;

        /**
         * The sender.
         * */
        private MMCoreConnector.WRMailBoxAccount.mailBoxAccount sender;
        private static readonly string fileLocation = "C:\\SSIN65030444743.p12";
        private static readonly string boxType = "MAILBOX_EHEALTH";
        private static readonly string type = "SSIN";
        private static readonly string value = "65030444743";
        private static readonly string applicationId = "";
        private static readonly string pinCode = "sophien7k";
        private MMCoreConnector.WRQueueManagement.destination destSender;
        private MMCoreConnector.WRQueueManagement.destination[] destReceiver = new MMCoreConnector.WRQueueManagement.destination[] { null };
        private static readonly string contentStr = "TEST EHEALTH MESSAGE";
        private static byte[] content;
        private static readonly string name = "MPROXYATTACHEMENT1";
        private static readonly string attachmentId = "MPROXYATTACHEMENT1";

        public static string generateMailBoxAccountId(string boxType, string type, string value, string applicationId)
        {
            string res = string.Empty;
            Console.WriteLine("generateMailBoxAccountId. Type : " + type + "  Value: " + value + "  AppID:" + applicationId);
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatus mos = services.MMCoreServiceMailBoxAccount.generateMailBoxAccountId(boxType, type, value, applicationId);
            Console.WriteLine("generateMailBoxAccountId :  RES: " + mos.operationResult);
            if (mos.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                res = mos.operationOutputValue;
                Console.WriteLine("generateMailBoxAccountId : Account ID " +
                    res);
            }
            else
            {
                throw new Exception("verifyLocalAccountExist falied: " + mos.detailedInfo);
            }
            return res;
        }

        public static MMCoreConnector.WRMailBoxAccount.mailBoxAccount readOrCreateMBAccount(string boxType, string type, string value, string applicationId)
        {
            MMCoreConnector.WRMailBoxAccount.mailBoxAccount res = null;
            Console.WriteLine("createLocalAccount. Type : " + type + "  Value: " + value + "  AppID:" + applicationId);
            string accId = generateMailBoxAccountId(boxType, type, value, applicationId);
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatusAccount mosa = null;
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatus mos = null;
            mosa = services.MMCoreServiceMailBoxAccount.readById(accId);
            if (mosa.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                res = mosa.value[0];
                Console.WriteLine("readOrCreateMBAccount : account FOUND  " + res);
            }
            else
            {
                Console.WriteLine("createLocalAccount : Account NOT FOUND. Creating...");
                mos = services.MMCoreServiceMailBoxAccount.createMailBox(boxType, type, value, applicationId);
                Console.WriteLine("createLocalAccount : " + value + " RES: " + mos.operationResult + "   INFO: " + mos.detailedInfo);
                if (mos.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
                {
                    Console.WriteLine("readOrCreateMBAccount : account was creted  ");
                }
                else
                { throw new Exception("Can't create the account. " + mosa.detailedInfo); }
                mosa = services.MMCoreServiceMailBoxAccount.readById(accId);
                res = mosa.value[0];
            }
            return res;
        }

        public MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage createTestIntMessage()
        {
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = new MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage();
            destSender = new MMCoreConnector.WRQueueManagement.destination();
            destSender.ApplicationID = applicationId;
            destSender.Value = (value);
            destSender.Type = (type);

            MMCoreConnector.WRQueueManagement.destination destReceiver1 = new MMCoreConnector.WRQueueManagement.destination();
            destReceiver1.ApplicationID = applicationId;
            destReceiver1.Value = (value);
            destReceiver1.Type = (type);
            destReceiver[0] = destReceiver1;

            mim.sender = (destSender);
            mim.receiver = (destReceiver);
            MMCoreConnector.WRQueueManagement.mproxyAttachment[] mproxyAttachements = new MMCoreConnector.WRQueueManagement.mproxyAttachment[] { null };
            MMCoreConnector.WRQueueManagement.mproxyAttachment ma = new MMCoreConnector.WRQueueManagement.mproxyAttachment();
            ma.attachmentId = (attachmentId);
            ma.content = (content);
            ma.name = (name);
            mproxyAttachements[0] = ma;
            mim.mproxyAttachements = (mproxyAttachements);
            return mim;
        }

        public static void setMailBoxAccountProperty(MMCoreConnector.WRMailBoxAccount.mailBoxAccount mba, string key, string value)
        {
            MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties[] mbaps = mba.properties;
            foreach (MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties mbap in mbaps)
            {
                if (mbap.propertyId != null && mbap.propertyId.Equals(key))
                {
                    mbap.value = (value);
                    return;
                }
            }
            MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties mbapp = new MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties();
            Array.Resize(ref mbaps, mbaps.Length + 1);
            mbaps[mbaps.Length] = mbapp;
            mbapp.propertyId = key;
            mbapp.value = (value);
        }

        public static void updateAccount(MMCoreConnector.WRMailBoxAccount.mailBoxAccount mba)
        {
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatus mr = services.MMCoreServiceMailBoxAccount.update(mba);
            if (!mr.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                throw new Exception("Can't update the account. " + mr.detailedInfo);
            }
        }
        private void setUpAcceptanceEnv(MMCoreConnector.WRMailBoxAccount.mailBoxAccount mba)
        {
            Console.WriteLine("Setting EH's acceptance env for " + mba);
            setMailBoxAccountProperty(mba, "MBAP_EHEALTH_ENV", "acceptance");
            updateAccount(mba);

            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatusAccount mosa = services.MMCoreServiceMailBoxAccount.readById(mba.id);
            if (mosa.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
             MMCoreConnector.WRMailBoxAccount.mailBoxAccount    res = mosa.value[0];
             showAccount(res);
            }
        }
        private void reimporCert()
        {
            //if (sender.pinCode.Equals(pinCode))                return;
            importCert(sender, fileLocation, pinCode);
            setUpAcceptanceEnv(sender);
        }
        public static void importCert(MMCoreConnector.WRMailBoxAccount.mailBoxAccount boxId, string fileLocation, string pinCode)
        {
            MMCoreConnector.WRMailBoxAccount.mailBoxAccount res;
            string id = boxId.id;
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatusAccount mosa = null;
            mosa = services.MMCoreServiceMailBoxAccount.readById(id);
            if (mosa.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                res = mosa.value[0];
                Console.WriteLine("importCert : account FOUND  " + res);
            }
            else
            {
                throw new Exception("Can't read the account. " + id);
            }
            res.pinCode = (pinCode);
            boxId.pinCode = (pinCode);
            updateAccount(res);
            services.MMCoreServiceCertification.deleteKeyStore(id);
            services.MMCoreServiceCertification.createEmptyKeyStore(id, pinCode);
            MMCoreConnector.WRCertification.mproxyOperationStatus cres = services.MMCoreServiceCertification.importPKCS12KeyStore(id, pinCode, fileLocation);
            if (!cres.operationResult.Equals(MMCoreConnector.WRCertification.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                throw new Exception("Can't import: " + id);
            }
        }

        public static string sendIntMessage(MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim, MMCoreConnector.WRQueueManagement.mailBoxAccountType mbat)
        {
            string res = "";
            MMCoreConnector.WRQueueManagement.mproxyOperationStatus mos = services.MMCoreServiceQueueManagement.sendMessage(mim, mbat);
            if (mos.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("SEND Failed!");
            }
            res = mos.operationOutputValue;
            return res;
        }
        private void verifyNoError(string accountId, string msgId)
        {
            Console.WriteLine("CHECK for errors. SENT MSG ID: " + msgId);
            MMCoreConnector.WRQueueManagement.mproxyOperationStatusIMessage msintm = services.MMCoreServiceQueueManagement.getIMessageById(accountId, msgId, MMCoreConnector.WRQueueManagement.mailBoxType.SENTBOX);
            if (msintm.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("Can't get the message: " + msgId + "   " + msintm.detailedInfo);
            }
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = msintm.value[0];
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessageError err = mim.error;
            if (err != null)
            {
                throw new Exception("The message has an error:" + err.mproxyError + "; " + err.rootCause);
            }
            else
            {
                Console.WriteLine("The MESSAGE is OK (NO ERROR)");
            }
        }
        private void fetchMessage(string accountId, string id)
        {
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = null;
            MMCoreConnector.WRQueueManagement.mproxyOperationStatusIMessage mosim = services.MMCoreServiceQueueManagement.getIMessageById(accountId, id, MMCoreConnector.WRQueueManagement.mailBoxType.INBOX);
            if (mosim.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("getIMessageById Failed! ERR " + mosim.operationResult);
            }
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage[] mims = mosim.value;
            mim = mims[0];

            if (mim != null)
            {
                MMCoreConnector.WRQueueManagement.mproxyAttachment[] ents = mim.mproxyAttachements;
                foreach (MMCoreConnector.WRQueueManagement.mproxyAttachment ent in ents)
                {
                    Console.WriteLine("ATT: " + ent.name);
                }
            }
        }

        private HashSet<String> receiveMessageIds(string accID)
        {
            MMCoreConnector.WRQueueManagement.mproxyOperationStatusStrings mosim = services.MMCoreServiceQueueManagement.getIMessageIds(accID, MMCoreConnector.WRQueueManagement.mailBoxType.INBOX);
            if (mosim.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("receiveMessageIds Failed! ERR " + mosim.operationResult);
            }
            string[] strsIds = mosim.value;
            if (strsIds == null)
            {
                throw new Exception("NO MESSAGE RECEIVED!");
            }
            HashSet<string> s = new HashSet<string>(strsIds);
            return s;
        }
        private void deleteMessage(string accountId, string msgId)
        {
            MMCoreConnector.WRQueueManagement.mproxyOperationStatus s = services.MMCoreServiceQueueManagement.deleteIMessage(accountId, msgId, MMCoreConnector.WRQueueManagement.mailBoxType.INBOX);
            if (s.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("DELETE FAILED from INBOX. ID " + msgId);
            }
            s = services.MMCoreServiceQueueManagement.deleteIMessage(accountId, msgId, MMCoreConnector.WRQueueManagement.mailBoxType.SENTBOX);
            if (s.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_FAILED))
            {
                throw new Exception("DELETE FAILED from SENTBOX ID " + msgId);
            }
        }
        public void showAccount(MMCoreConnector.WRMailBoxAccount.mailBoxAccount account)
        {
            Console.WriteLine("Account : " + account.id);
            MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties[] mbaps = account.properties;
            foreach (MMCoreConnector.WRMailBoxAccount.mailBoxAccountProperties mbap in mbaps)
            {
                Console.WriteLine("Account prop ID : " + mbap.propertyId + "  VAL: " + mbap.value);
            }
        }
        /**
         * Test.
         * 
         * @throws Exception
         *             the exception
         */
        public void testSendReceiveBasicTest()
        {
            Console.WriteLine("Starting test 01 (Create, Send, Receive)");
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_HOST", "localhost");
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_PORT", "8088");
            services = MMCoreServicesFactory.Services;
            services.SetupServices();
            content = System.Text.ASCIIEncoding.ASCII.GetBytes(contentStr);
            sender = readOrCreateMBAccount(boxType, type, value, applicationId);
            reimporCert();
            showAccount(sender);
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = createTestIntMessage();
            string msgId = sendIntMessage(mim, MMCoreConnector.WRQueueManagement.mailBoxAccountType.MAILBOX_EHEALTH);
            Console.WriteLine("SENT MSG ID: " + msgId);
            verifyNoError(sender.id,msgId);
            System.Threading.Thread.Sleep(10000);
            HashSet<string> msgIds = receiveMessageIds(sender.id);
            if (msgIds.Contains(msgId))
            {
                Console.WriteLine("The MESSAGE:" + msgId + " is received");
            }
            else
            {
                throw new Exception("The MESSAGE:" + msgId + " is NOT received!");
            }
            fetchMessage(sender.id,msgId);
            deleteMessage(sender.id,msgId);
        }
  

    }
}