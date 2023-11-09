# pshash_hmac
php hash_hmac equivalent in PowerShell

I am not paying 200 dollars for a Code signing  certificate - feel free to donate $$ to me if you want a signed ps file. 
Otherwise, "Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass",  or run as administrator.
This code is quite small, so not hard to read everything that it is doing.
This executes C# code in PowerShell, because PS only has a hashfile, and does not have a way to hash/salt a string.
So, if you are in need of something that does that, here you go.
