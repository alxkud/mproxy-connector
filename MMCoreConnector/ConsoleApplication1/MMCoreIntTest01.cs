using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CMPMedica.MMCoreConnector.Factories;
using CMPMedica.MMCoreConnector.Services;




namespace MMCoreIntegrationTests.Tests
{
    class MMCoreIntTest01
    {
        private static IMMCoreServices services;
        private static readonly string PINCODE = "ixem";
        private static readonly string TEST_STRING = "HelloMMCoreWorld...";
        private static readonly string SenderFirstName = "Michael";
        private static string SenderLastName = "Jackson";
        private static readonly string ReceiverFirstName = "Freddy";
        private static string ReceiverLastName = "Mercury";
        private static MMCoreConnector.WRAccount.person sender;
        private static MMCoreConnector.WRAccount.person receiver;
        private MMCoreConnector.WRQueueManagement.destination destSender;
        private MMCoreConnector.WRQueueManagement.destination[] destReceiver = new MMCoreConnector.WRQueueManagement.destination[] { null };
        private static readonly string contentStr = "TEST EHEALTH MESSAGE";
        private static byte[] content;
        private static readonly string name = "MPROXYATTACHEMENT1";
        private static readonly string attachmentId = "MPROXYATTACHEMENT1";
        public static string generateMexiAddress(string firstName, string lastName, string inami, string ca)
        {
            string result = "";
            if (inami == null)
            {
                inami = "";
            }
            if (ca == null)
            {
                ca = "MedShare";
            }
            result = lastName + "." + inami + "@" + ca;
            if (firstName == null || firstName.Equals(""))
            {
            }
            else
            {
                result = firstName + "." + result;
            }
            return result;
        }
        private static void initializeReceiverPersonalData()
        {
            MMCoreConnector.WRAccount.person person = new MMCoreConnector.WRAccount.person();
            person.firstName = ReceiverFirstName;
            person.lastName = ReceiverLastName +Guid.NewGuid();
            person.login = person.firstName + "." + person.lastName;
            Random randomGenerator = new Random();
            person.version = "VERSION_MPROXY";
            person.password = person.firstName;
            person.city = "BRUXELLES";
            long inami = 800000L + randomGenerator.Next(100000);
            long niss = 700000000L + randomGenerator.Next(100000000);
            person.niss = (niss.ToString());
            person.inami = (inami.ToString());
            receiver = person;
        }

        private static void initializeSenderPersonalData()
        {
            MMCoreConnector.WRAccount.person person = new MMCoreConnector.WRAccount.person();
            person.firstName = SenderFirstName;
            person.lastName = SenderLastName + Guid.NewGuid();
            person.login = person.firstName + "." + person.lastName;
            Random randomGenerator = new Random();
            person.version = "VERSION_MPROXY";
            person.password = person.firstName;
            person.city = "BRUXELLES";
            long inami = 800000L + randomGenerator.Next(100000);
            long niss = 700000000L + randomGenerator.Next(100000000);
            person.niss = (niss.ToString());
            person.inami = (inami.ToString());
            sender = person;
        }
        private static void certify(MMCoreConnector.WRAccount.person person)
        {
            Console.WriteLine("CERTIFYING : " + person.login);

            string keyLabel = person.login;


            MMCoreConnector.WRCertification.mproxyOperationStatus ops;
            MMCoreConnector.WRAdapters.mproxyOperationStatus mosA;
            ops = services.MMCoreServiceCertification.deleteKeyStore(keyLabel);
            ops = services.MMCoreServiceCertification.createEmptyKeyStore(keyLabel, PINCODE);

            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            ops = services.MMCoreServiceCertification.generateAuthenticationKeys(keyLabel, PINCODE, false);
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            ops = services.MMCoreServiceCertification.prepareAuthenticationCertificateRequest(keyLabel, PINCODE, "", false);
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            mosA = services.MMCoreServiceAdapters.processAuthenticationCertificateRequest(keyLabel, PINCODE, ops.operationOutputValue);
            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            ops = services.MMCoreServiceCertification.processAuthenticationCertificateResponse(keyLabel, PINCODE, mosA.operationOutputValue, services.MMCoreServiceAdapters.retrieveCaAuthCertChain());
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            string certAuthS = ops.operationOutputValue;
            ops = services.MMCoreServiceCertification.generateEncryptionKeys(keyLabel, PINCODE);
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            ops = services.MMCoreServiceCertification.prepareEtkRequest(keyLabel, PINCODE);
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            string certEncS = ops.operationOutputValue;
            mosA = services.MMCoreServiceAdapters.processEtkRequest(keyLabel, certAuthS, certEncS);
            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            ops = services.MMCoreServiceCertification.processEtkResponse(keyLabel, mosA.operationOutputValue);
            Console.WriteLine("RESULT: " + ops.operationResult + " INFO: " + ops.detailedInfo + " OUT: " + ops.operationOutputValue);
            Console.WriteLine("Last status:" + services.MMCoreServiceCertification.getLastSuccessfullOperation(keyLabel, PINCODE).operationOutputValue);

            mosA = services.MMCoreServiceAdapters.retrieveEtk(keyLabel);
            Console.WriteLine("RESULT: " + mosA.operationResult + " INFO: " + mosA.detailedInfo + " OUT: " + mosA.operationOutputValue);
            Console.WriteLine("Etk S: " + mosA.operationOutputValue);
        }
        private static MMCoreConnector.WRAccount.person createServerAccount(MMCoreConnector.WRAccount.person person)
        {
            MMCoreConnector.WRAccount.person res = null;
            Console.WriteLine("createServerAccount : " + person.login);
            MMCoreConnector.WRAccount.mproxyOperationStatusPerson mosp = services.MMCoreServiceAccount.createAccountWS(person);
            Console.WriteLine("createServerAccount : " + person.login + " RES: " + mosp.operationResult + "   INFO: " + mosp.detailedInfo);
            if (mosp.operationResult.Equals(MMCoreConnector.WRAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Account created"))
                {
                    Console.WriteLine("createServerAccount : " + person.login + " CREATED");
                    res = mosp.value[0];
                }
            }
            else
            {
                Console.WriteLine("createServerAccount : " + person.login + " NOT CREATED...");
                res = null;
            }
            return res;

        }
        private static void createLocalAccount(MMCoreConnector.WRAccount.person person)
        {
            Console.WriteLine("createLocalAccount : " + person.login);
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatus mosp = services.MMCoreServiceMailBoxAccount.createDefault(person.login, person.mexiAddress);
            Console.WriteLine("createLocalAccount : " + person.login + " RES: " + mosp.operationResult + "   INFO: " + mosp.detailedInfo);
            if (mosp.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Successfully created"))
                {
                    Console.WriteLine("createLocalAccount : " + person.login + " CREATED");

                }
            }
            else
            {
                Console.WriteLine("createLocalAccount : " + person.login + " NOT CREATED...");
            }
            updateLocalAccountPassword(person);

        }
        private static MMCoreConnector.WRAccount.person verifyServerAccountExist(MMCoreConnector.WRAccount.person person)
        {
            MMCoreConnector.WRAccount.person res = null;
            Console.WriteLine("verifyServerAccountExist : " + person.login);
            MMCoreConnector.WRAccount.mproxyOperationStatusPerson mosp = services.MMCoreServiceAccount.findAccount(person.login);
            Console.WriteLine("verifyServerAccountExist : " + person.login + "  IS: " + mosp.operationResult);
            if (mosp.operationResult.Equals(MMCoreConnector.WRAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Account found"))
                {
                    Console.WriteLine("verifyServerAccountExist : " + person.login + " FOUND!");
                    res = mosp.value[0];
                }
            }
            else
            {
                Console.WriteLine("verifyServerAccountExist : " + person.login + " NOT FOUND...");
            }
            return res;
        }
        private static MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage composeMessage()
        {
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage message = new MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage();
            message.mproxyXMLMessage = "";
            return message;
        }



        public static string EncodeTo64(string toEncode)
        {

            byte[] toEncodeAsBytes = System.Text.ASCIIEncoding.ASCII.GetBytes(toEncode);
            string returnValue = System.Convert.ToBase64String(toEncodeAsBytes);
            return returnValue;
        }

        public static string DecodeFrom64(string encodedData)
        {
            byte[] encodedDataAsBytes = System.Convert.FromBase64String(encodedData);
            string returnValue = System.Text.ASCIIEncoding.ASCII.GetString(encodedDataAsBytes);
            return returnValue;
        }



        private static string createTempFile()
        {
            string fileName = System.IO.Path.GetTempPath() + Guid.NewGuid().ToString() + ".txt";
            System.IO.File.WriteAllText(fileName, TEST_STRING);
            Console.WriteLine("Temp file created : " + fileName);
            return fileName;
        }
        private static void updateLocalAccountPassword(MMCoreConnector.WRAccount.person person)
        {
            MMCoreConnector.WRMailBoxAccount.mailBoxAccount accountLoc=null;

            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatusAccount mosp = services.MMCoreServiceMailBoxAccount.readById(person.login);
            Console.WriteLine("verifyLocalAccountExist : " + person.login + "  IS: " + mosp.operationResult);
            if (mosp.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Successfully read"))
                {
                    accountLoc = mosp.value[0];
                    Console.WriteLine("updateLocalAccountPassword : " + person.login + " FOUND!");
                }
            }
            else
            {
                Console.WriteLine("updateLocalAccountPassword : " + person.login + " NOT FOUND...");
            }
            accountLoc.password = person.password;
            services.MMCoreServiceMailBoxAccount.update(accountLoc);
        }
        private static bool verifyLocalAccountExist(MMCoreConnector.WRAccount.person person)
        {
            bool res = false;
            Console.WriteLine("verifyLocalAccountExist : " + person.login);
            MMCoreConnector.WRMailBoxAccount.mproxyOperationStatusAccount mosp = services.MMCoreServiceMailBoxAccount.readById(person.login);
            Console.WriteLine("verifyLocalAccountExist : " + person.login + "  IS: " + mosp.operationResult);
            if (mosp.operationResult.Equals(MMCoreConnector.WRMailBoxAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Successfully read"))
                {
                    Console.WriteLine("verifyLocalAccountExist : " + person.login + " FOUND!");
                    res = true;
                }
            }
            else
            {
                Console.WriteLine("verifyLocalAccountExist : " + person.login + " NOT FOUND...");
            }
            return res;
        }

        public void setUpConnector()
        {
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_HOST", "localhost");
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_PORT", "8088");
            services = MMCoreServicesFactory.Services;
            services.SetupServices();
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
        public MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage createTestIntMessage()
        {
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = new MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage();
            destSender = new MMCoreConnector.WRQueueManagement.destination();
            destSender.ApplicationID = string.Empty;
            destSender.Value = sender.login;
            destSender.Type = string.Empty;

            MMCoreConnector.WRQueueManagement.destination destReceiver1 = new MMCoreConnector.WRQueueManagement.destination();
            destReceiver1.ApplicationID = string.Empty;
            destReceiver1.Value = receiver.login;
            destReceiver1.Type = string.Empty;
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
        static void Main(string[] args)
        {
            MMCoreIntTest01 test = new MMCoreIntTest01();
            test.mmCoreMainTest();
            EHBoxMiniLab.Tests.EHBoxMiniLabBasic ehb = new EHBoxMiniLab.Tests.EHBoxMiniLabBasic();
            //ehb.testSendReceiveBasicTest();
        }
        public void mmCoreMainTest()
        {
            Console.WriteLine("Starting test 01 (Create, Send, Receive)");
            //Set up connector settings. Host = localhost (where the mproxy/mmcore is installed) port =8088
            setUpConnector();
            //Content to be sent
            content = System.Text.ASCIIEncoding.ASCII.GetBytes(contentStr);

            initializeSenderPersonalData();
            initializeReceiverPersonalData();
            MMCoreConnector.WRAccount.person remoteSender = verifyServerAccountExist(sender);
            MMCoreConnector.WRAccount.person remoteReceiver = verifyServerAccountExist(receiver);
            if (remoteSender == null)
            {
                remoteSender = createServerAccount(sender);
            }

            if (remoteReceiver == null)
            {
                remoteReceiver = createServerAccount(receiver);
            }
            updateLocalPassword(remoteReceiver, receiver.password);
            updateLocalPassword(remoteSender, sender.password);
            receiver = remoteReceiver;
            sender = remoteSender;

            if (!verifyLocalAccountExist(sender))
            {
                createLocalAccount(sender);
                certify(sender);
            }
            if (!verifyLocalAccountExist(receiver))
            {
                createLocalAccount(receiver);
                certify(receiver);
            }

            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = createTestIntMessage();

            string msgId = sendIntMessage(mim, MMCoreConnector.WRQueueManagement.mailBoxAccountType.MAILBOX_MEDIBRIDGE_MMCORE);
            Console.WriteLine("SENT MSG ID: " + msgId);
            verifyNoError(sender.login, msgId);
            System.Threading.Thread.Sleep(10000);
            HashSet<string> msgIds = receiveMessageIds(receiver.login);
            if (msgIds.Contains(msgId))
            {
                Console.WriteLine("The MESSAGE:" + msgId + " is received");
            }
            else
            {
                throw new Exception("The MESSAGE:" + msgId + " is NOT received!");
            }
            fetchMessage(receiver.login, msgId);
            deleteMessage(receiver.login, msgId);
        }

        private void updateLocalPassword(MMCoreConnector.WRAccount.person person, string password)
        {
            person.password = password;
        }
    }
}
