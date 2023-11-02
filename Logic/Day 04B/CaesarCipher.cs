namespace Day_04B
{
    internal class CaesarCipher
    {
        public CaesarCipher()
        {
            //studi kasus
            //Original alphabet:      abcdefghijklmnopqrstuvwxyz
            //Alphabet rotated +2:    cdefghijklmnopqrstuvwxyzab

            Console.WriteLine("=====Caesar Cipher====");
            Console.Write("Masukkan kata: ");
            string kata = Console.ReadLine();
            Console.Write("Masukkan jumlah rotasi: ");
            int rotasi = int.Parse(Console.ReadLine());

            string alpLib = "abcdefghijklmnopqrstuvwxyz";

            //penggalan1 = abc => alpLib.Substring(0, r)
            string penggalan1 = alpLib.Substring(0, rotasi);
            //penggalan2 = defghijklmnopqrstuvwxyz => alpLib.Substring(r, 26 - r)
            string penggalan2 = alpLib.Substring(rotasi, 26 - rotasi);
            //defghijklmnopqrstuvwxyzabc
            string alpRot = penggalan2 + penggalan1;

            string result = "";

            for (int i = 0; i < kata.Length; i++)
            {
                char c = kata[i];
                if (Char.IsLower(c))
                {
                    //lower
                    int idx = alpLib.IndexOf(kata[i]);
                    result += alpRot.Substring(idx, 1);
                }
                else if (Char.IsUpper(c))
                {
                    //upper
                    int idx = alpLib.IndexOf(kata[i].ToString().ToLower()); //convert dulu ke lower karna kalau langsung upper gaakan ketemu
                    result += alpRot.Substring(idx, 1).ToUpper();
                }
                else
                {
                    result += kata[i];
                }
            }
            Console.WriteLine(result);
        }
    }
}
