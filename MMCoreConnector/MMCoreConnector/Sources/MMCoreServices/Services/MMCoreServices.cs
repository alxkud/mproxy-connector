using System;
using System.Collections.Generic;
using CMPMedica.MMCoreConnector.Services;
using MMCoreConnector.WRAccount;
using MMCoreConnector.WRAdapters;
using MMCoreConnector.WRCertification;
using MMCoreConnector.WRDiagnostics;
using MMCoreConnector.WREtkDepotAdapter;
using MMCoreConnector.WRMailBoxAccount;
using MMCoreConnector.WRQueueManagement;
using CMPMedica.MMCoreConnector.Factories;
using CMPMedica.MMCoreConnector.Utils;
namespace CMPMedica.MMCoreConnector.Interfaces
{
    public sealed class MMCoreServices : IMMCoreServices
    {
        private static readonly AdaptersService mmcSvcAdapters = new AdaptersService();
        private static readonly CertificationService mmcSvcCertification = new CertificationService();
        private static readonly DiagnosticsService mmcSvcDiagnostics = new DiagnosticsService();
        private static readonly EtkDepotAdapterService mmcSvcEtkDepotAdapter = new EtkDepotAdapterService();
        private static readonly MailBoxAccountManagementService mmcSvcMailBoxAccount = new MailBoxAccountManagementService();
        private static readonly QueueManagerService mmcSvcQueueManagement = new QueueManagerService();
        private static readonly AccountService mmcSvcAccount = new AccountService();

        public void SetupServices()
        {
            Dictionary<string, string> settings = MMCoreSettingsFactory.ConnectionSettings.Settings;
            string host = settings["MMCSRVC_MMCORE_HOST"];
            string port = settings["MMCSRVC_MMCORE_PORT"];
            mmcSvcAdapters.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcAdapters.Url);
            mmcSvcCertification.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcCertification.Url);
            mmcSvcDiagnostics.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcDiagnostics.Url);
            mmcSvcEtkDepotAdapter.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcEtkDepotAdapter.Url);
            mmcSvcMailBoxAccount.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcMailBoxAccount.Url);
            mmcSvcQueueManagement.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcQueueManagement.Url);
            mmcSvcAccount.Url = ServicesHelper.ReplaceHostPort(host, port, mmcSvcAccount.Url);

            mmcSvcAdapters.Timeout = 600000;
            mmcSvcCertification.Timeout = 600000;
            mmcSvcDiagnostics.Timeout = 600000;
            mmcSvcEtkDepotAdapter.Timeout = 600000;
            mmcSvcMailBoxAccount.Timeout = 600000;
            mmcSvcQueueManagement.Timeout = 600000;
            mmcSvcAccount.Timeout = 600000;

        }
        public AccountService MMCoreServiceAccount { get { return mmcSvcAccount; } }
        public AdaptersService MMCoreServiceAdapters { get { return mmcSvcAdapters; } }
        public CertificationService MMCoreServiceCertification { get { return mmcSvcCertification; } }
        public DiagnosticsService MMCoreServiceDiagnostics { get { return mmcSvcDiagnostics; } }
        public EtkDepotAdapterService MMCoreServiceEtkDepotAdapter { get { return mmcSvcEtkDepotAdapter; } }
        public MailBoxAccountManagementService MMCoreServiceMailBoxAccount { get { return mmcSvcMailBoxAccount; } }
        public QueueManagerService MMCoreServiceQueueManagement { get { return mmcSvcQueueManagement; } }
    }
}
