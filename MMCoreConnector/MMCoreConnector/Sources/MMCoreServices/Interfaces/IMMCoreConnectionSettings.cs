using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CMPMedica.MMCoreConnector.Interfaces
{
    public interface IMMCoreConnectionSettings
    {
        Dictionary<string,string> Settings { get; set; }
    }  
}