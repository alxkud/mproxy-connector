using System;
using System.Collections;
using CMPMedica.MMCoreConnector.Interfaces;

namespace CMPMedica.MMCoreConnector.Factories
{
    public abstract class MMCoreSettingsFactory
    {
        private static IMMCoreConnectionSettings settings = new MMCoreConnectionSettings();
        public static IMMCoreConnectionSettings ConnectionSettings
        {
            get
            {
                return settings;
            }
            set
            {
                settings = value;
            }
        }
    }
}