﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.1433
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MMCoreConnector.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "9.0.0.0")]
    public sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:8088/mailBoxAccount")]
        public string MMCoreConnector_WRMailBoxAccount_MailBoxAccountManagementService {
            get {
                return ((string)(this["MMCoreConnector_WRMailBoxAccount_MailBoxAccountManagementService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:8088/certification")]
        public string MMCoreConnector_WRCertification_CertificationService {
            get {
                return ((string)(this["MMCoreConnector_WRCertification_CertificationService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://everest.cmpmedica.be:8080/services/Adapters")]
        public string MMCoreConnector_WRAdapters_AdaptersService {
            get {
                return ((string)(this["MMCoreConnector_WRAdapters_AdaptersService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://gl-everest.lan.pcsol.be:8080/AccountsServiceSession/createMproxyAccount")]
        public string MMCoreConnector_WRCreateMproxyAccount_MproxyAccountsService {
            get {
                return ((string)(this["MMCoreConnector_WRCreateMproxyAccount_MproxyAccountsService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://everest.cmpmedica.be:8080/services/EtkDepotAdapter")]
        public string MMCoreConnector_WREtkDepotAdapter_EtkDepotAdapterService {
            get {
                return ((string)(this["MMCoreConnector_WREtkDepotAdapter_EtkDepotAdapterService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:8088/queueManagement")]
        public string MMCoreConnector_WRQueueManagement_QueueManagerService {
            get {
                return ((string)(this["MMCoreConnector_WRQueueManagement_QueueManagerService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:8088/diagnostics")]
        public string MMCoreConnector_WRDdiagnostics_DiagnosticsService {
            get {
                return ((string)(this["MMCoreConnector_WRDdiagnostics_DiagnosticsService"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.WebServiceUrl)]
        [global::System.Configuration.DefaultSettingValueAttribute("http://everest.cmpmedica.be:8080/services/Account")]
        public string MMCoreConnector_WRAccount_AccountService {
            get {
                return ((string)(this["MMCoreConnector_WRAccount_AccountService"]));
            }
        }
    }
}
