

using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;
namespace CMPMedica.MMCoreConnector.Utils
{
    public static class ServicesHelper
    {
        /**
 * Replace the host and the port of a given URL.
 * 
 * @param host
 *            new host
 * @param port
 *            new port
 * @param uriToTransform
 *            URL to change as string
 * @return updated URL as String
 */     
        public static string ReplaceHostPort(string host, string port, string uriToTransform)
        {
            string result = null;
            try
            {
                Uri u = new Uri(uriToTransform);
                result = "http://" + host + ":" + port + u.PathAndQuery;
            }
            catch
            {
            }
            return result;
        }


        private static string Md5(string input)
        {  // Create a new instance of the MD5CryptoServiceProvider object.  
            MD5 md5Hasher = MD5.Create();
            // Convert the input string to a byte array and compute the hash.  
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
            // Create a new Stringbuilder to collect the bytes  
            // and create a string.  
            StringBuilder sBuilder = new StringBuilder();
            // Loop through each byte of the hashed data  
            // and format each one as a hexadecimal string.  
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }   // Return the hexadecimal string.  
            return sBuilder.ToString();
        }
        private static double ConvertToTimestamp(DateTime value)
        {  //create Timespan by subtracting the value provided from  //the Unix Epoch  
            TimeSpan span = (value - new DateTime(1970, 1, 1, 0, 0, 0, 0).ToLocalTime());
            //return the total seconds (which is a UNIX timestamp)  
            return (double)span.TotalSeconds;
        }
        public static void Shuffle(Random rng, char[] array)
        {
            int n = array.Length;
            while (n > 1)
            {
                int k = rng.Next(n--);
                char temp = array[n];
                array[n] = array[k];
                array[k] = temp;
            }
        }

        public static string CombineList(List<string> list)
        {
            string res = string.Empty;
            if (list != null && list.Count > 0)
            {
                foreach (string s in list)
                {
                    res += s + ";";
                }
                res = res.TrimEnd(';');
            }
            return res;
        }

        public static string GenerateUid()
        {
            string md5 = Md5(ConvertToTimestamp(DateTime.Now).ToString());
            char[] MyArray = md5.ToCharArray();
            Shuffle(new Random(), MyArray);
            string s = new String(MyArray);
            s = s.Substring(0, 16);
            return s;
        }
    }      
}