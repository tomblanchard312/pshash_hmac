#Returns Base16 Hashed Value
#You can test here: https://dinochiesa.github.io/hmachash/index.html
#Make sure that you have permissions to Add-Type or this will not work
$id = get-random
$key='secret'
$data='The quick brown fox jumped over the lazy dog.'
$Source = @"
using System;
using System.Security.Cryptography;
using System.Text;

namespace pshash
    {
    public class hmac$id
        {
        public static string HMACSHA512(string key, string data)
            {
            string HmacHashed = "";
            using (HMACSHA512 HMACSHA512 = new HMACSHA512(Encoding.ASCII.GetBytes(key)))
                    {
                      HmacHashed = BitConverter.ToString(HMACSHA512.ComputeHash(Encoding.ASCII.GetBytes(data))).Replace("-", string.Empty);
                    }
            return HmacHashed;
            }
        }
    }
"@
Add-Type -TypeDefinition $Source -Language CSharp 
$hashedvalue = Invoke-Expression "[pshash.hmac$id]::HMACSHA512('$key','$data')"
Write-Host $hashedvalue
