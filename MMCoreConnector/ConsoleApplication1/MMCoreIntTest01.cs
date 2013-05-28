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
        private static readonly string SenderLastName = "Jackson";
        private static readonly string ReceiverFirstName = "Freddy";
        private static readonly string ReceiverLastName = "Mercury";
        private static MMCoreConnector.WRAccount.person sender;
        private static MMCoreConnector.WRAccount.person receiver;

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
            person.lastName = ReceiverLastName;
            person.login = person.firstName + "." + person.lastName;
            person.role = "INDETERMINE";
            person.version = "VERSION_MPROXY";
            person.sender = true;
            person.inami = "87685674346";
            person.password = "abc";
            person.enabled = "true";
            person.userCertificate = "1";
            person.fax = "000";
            person.boolAck = true;
            person.encCertificate = "1";
            person.certified = true;
            person.caDomain = "mproxytest";
            person.mexiAddress = generateMexiAddress(person.firstName, person.lastName, person.inami, person.caDomain);
            receiver = person;
        }

        private static void initializeSenderPersonalData()
        {
            MMCoreConnector.WRAccount.person person = new MMCoreConnector.WRAccount.person();
            person.firstName = SenderFirstName;
            person.lastName = SenderLastName;
            person.login = person.firstName + "." + person.lastName;
            person.role = "INDETERMINE";
            person.version = "VERSION_MPROXY";
            person.sender = true;
            person.password = "abc";
            person.enabled = "true";
            person.userCertificate = "1";
            person.fax = "000";
            person.inami = "52454346";
            person.boolAck = true;
            person.encCertificate = "1";
            person.certified = true;
            person.caDomain = "mproxytest";
            person.mexiAddress = generateMexiAddress(person.firstName, person.lastName, person.inami, person.caDomain);
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
        private static void createServerAccount(MMCoreConnector.WRAccount.person person)
        {
            Console.WriteLine("createServerAccount : " + person.login);
            MMCoreConnector.WRAccount.mproxyOperationStatus mosp = services.MMCoreServiceAccount.createAccountWS(person);
            Console.WriteLine("createServerAccount : " + person.login + " RES: " + mosp.operationResult + "   INFO: " + mosp.detailedInfo);
            if (mosp.operationResult.Equals(MMCoreConnector.WRAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Account created"))
                {
                    Console.WriteLine("createServerAccount : " + person.login + " CREATED");

                }
            }
            else
            {
                Console.WriteLine("createServerAccount : " + person.login + " NOT CREATED...");
            }

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
        }
        private static bool verifyServerAccountExist(MMCoreConnector.WRAccount.person person)
        {
            bool res = false;
            Console.WriteLine("verifyServerAccountExist : " + person.login);
            MMCoreConnector.WRAccount.mproxyOperationStatusPerson mosp = services.MMCoreServiceAccount.findAccount(person.login);
            Console.WriteLine("verifyServerAccountExist : " + person.login + "  IS: " + mosp.operationResult);
            if (mosp.operationResult.Equals(MMCoreConnector.WRAccount.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                if (mosp.detailedInfo.Equals("Account found"))
                {
                    Console.WriteLine("verifyServerAccountExist : " + person.login + " FOUND!");
                    res = true;
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

        private static void sendMessage(MMCoreConnector.WRAccount.person personSender, MMCoreConnector.WRAccount.person personReceiver)
        {
            Console.WriteLine("sendMessage : SND: " + personSender.login + "; RCV: " + personReceiver.login);
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = composeMessage();

            string fileName = createTempFile();

            string xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>" +
"<mproxyMessage xmlns:ns2=\"com.cmp.mproxy.message\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:type=\"ns2:mproxyMessage\">" +
    "<version>2</version>" +
    "<receiver><uid>" + personReceiver.login + "</uid></receiver><sender><uid>" + personSender.login + "</uid></sender>" +
    "<attachments><attachment><uri>" + fileName + "</uri></attachment></attachments></mproxyMessage>";

            string xmlB64 = EncodeTo64(xml);

            MMCoreConnector.WRQueueManagement.mproxyOperationStatus mos = services.MMCoreServiceQueueManagement.sendAsXml(personSender.login, xmlB64);

            Console.WriteLine("RESULT: " + mos.operationResult + " INFO: " + mos.detailedInfo + " OUT: " + mos.operationOutputValue);
            if (mos.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                Console.WriteLine("SENT");
            }
            else
            {
                Console.WriteLine("NOT SENT...");
            }
        }

        private static string createTempFile()
        {
            string fileName = System.IO.Path.GetTempPath() + Guid.NewGuid().ToString() + ".txt";
            System.IO.File.WriteAllText(fileName, TEST_STRING);
            Console.WriteLine("Temp file created : " + fileName);
            return fileName;
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

        private static void findSentMessages(MMCoreConnector.WRAccount.person receiver)
        {
            Console.WriteLine("findSentMessages. RCV: " + receiver.login);
            MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage mim = null;

            MMCoreConnector.WRQueueManagement.mproxyOperationStatusStrings moss = services.MMCoreServiceQueueManagement.getMessageIds(receiver.login);
            Console.WriteLine("RESULT: " + moss.operationResult + " INFO: " + moss.detailedInfo);
            if (moss.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_OK))
            {
                Console.WriteLine("OK");
            }
            else
            {
                Console.WriteLine("Failed to get ids...");
            }
            string[] allIds = moss.value;
            foreach (string id in allIds)
            {
                Console.WriteLine("FOUND: " + id);
                int msgId = Convert.ToInt32(id);
                MMCoreConnector.WRQueueManagement.mproxyOperationStatusIMessage mosim = services.MMCoreServiceQueueManagement.getIMessageById(msgId);
                if (mosim.operationResult.Equals(MMCoreConnector.WRQueueManagement.mproxyOperationResult.MPROXY_RESULT_OK))
                {
                    Console.WriteLine("OK, got integration message");
                    MMCoreConnector.WRQueueManagement.mproxyIntegrationMessage[] mims = mosim.value;
                    mim = mims[0];
                    if (mim != null)
                    {
                        Console.WriteLine("MSG : " + mim.mproxyXMLMessage);
                    }
                }
                else
                {
                    Console.WriteLine("Failed to get a message");
                }
            }
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Starting test 01 (Create, Send, Receive)");
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_HOST", "localhost");
            CMPMedica.MMCoreConnector.Factories.MMCoreSettingsFactory.ConnectionSettings.Settings.Add("MMCSRVC_MMCORE_PORT", "8088");
            services = MMCoreServicesFactory.Services;
            services.SetupServices();

            initializeSenderPersonalData();
            initializeReceiverPersonalData();

            if (!verifyServerAccountExist(sender))
            {
                createServerAccount(sender);
            }

            if (!verifyServerAccountExist(receiver))
            {
                createServerAccount(receiver);
            }

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
            sendMessage(sender, receiver);
            findSentMessages(receiver);
        }
    }
}
