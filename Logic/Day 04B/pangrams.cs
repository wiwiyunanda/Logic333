namespace Day_04B
{
    internal class pangrams
    {
        public pangrams()
        {
            //studi kasus
            //setiap kata dalam kalimat harus include semua huruf alfabet

            Console.WriteLine("=====Pangrams=====");
            Console.Write("Masukkan kalimat: ");

            string alpLib = "abcdefghijklmnopqrstuvwxyz";
            int count = 0;
            string ip = Console.ReadLine();

            foreach (char i in alpLib)
            {
                foreach (char j in ip.ToLower())
                {
                    if (i == j)
                    {
                        count++;
                        break;
                    }
                }
            }
            if (count == 26)
                Console.WriteLine("Pangram");
            else
                Console.WriteLine("Not pangram");
        }
    }
    
}
