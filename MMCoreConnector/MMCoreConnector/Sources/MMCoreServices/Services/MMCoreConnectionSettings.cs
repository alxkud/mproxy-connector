using System.Collections.Generic;
namespace CMPMedica.MMCoreConnector.Interfaces
{
    public sealed class MMCoreConnectionSettings : IMMCoreConnectionSettings
    {
        private Dictionary<string, string> settings = new Dictionary<string, string>();

        public Dictionary<string,string> Settings
        {
            get { return settings; }
            set { settings = value; }
        }
    }
}
