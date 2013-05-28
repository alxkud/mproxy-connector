using System;
using System.Collections;
using CMPMedica.MMCoreConnector.Interfaces;
using CMPMedica.MMCoreConnector.Services;

namespace CMPMedica.MMCoreConnector.Factories
{
    public abstract class MMCoreServicesFactory
    {
        private static IMMCoreServices services = new MMCoreServices();
        public static IMMCoreServices Services
        {
            get
            {
                return services;
            }
            set
            {
                services = value;
            }
        }
    }
}