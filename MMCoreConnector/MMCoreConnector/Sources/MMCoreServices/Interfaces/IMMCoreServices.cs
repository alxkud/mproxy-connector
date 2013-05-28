
using CMPMedica.MMCoreConnector.Interfaces;
using MMCoreConnector.WRAccount;
using MMCoreConnector.WRAdapters;
using MMCoreConnector.WRCertification;
using MMCoreConnector.WRDiagnostics;
using MMCoreConnector.WREtkDepotAdapter;
using MMCoreConnector.WRMailBoxAccount;
using MMCoreConnector.WRQueueManagement;
namespace CMPMedica.MMCoreConnector.Services
{
    public interface IMMCoreServices
    {
        void SetupServices();
        AccountService MMCoreServiceAccount { get; }
        AdaptersService MMCoreServiceAdapters { get; }
        CertificationService MMCoreServiceCertification { get; }
        DiagnosticsService MMCoreServiceDiagnostics { get; }
        EtkDepotAdapterService MMCoreServiceEtkDepotAdapter { get; }
        MailBoxAccountManagementService MMCoreServiceMailBoxAccount { get; }
        QueueManagerService MMCoreServiceQueueManagement { get; }
    }
}
