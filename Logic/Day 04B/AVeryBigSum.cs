 
namespace Day_04B
{
    internal class AVeryBigSum
    {
        public AVeryBigSum()
        {
            //studi kasus
            //1000000001 1000000002 1000000003 1000000004 1000000005
            //                          1
            //               012345678901
            //titipan                  10
            //arrString[0]= "100000000001" => 12
            //arrString[1]= "001000000002" => 10
            //arrString[2]= "010000000003" => 11
            //arrString[3]= "001000000004" => 10
            //arrString[4]= "001000000005" => 10
            //                          5


            Console.WriteLine("=====A Very Big Sum====");
            Console.Write("Masukkan jumlah deret nilai:");
            int jumlah = int.Parse(Console.ReadLine());
            string[] deret = new string[jumlah];
            for (int i = 0; i < deret.Length; i++)
            {
                Console.Write($"Masukkan deret ke {i+1}/{jumlah}: ");
                deret[i] = Console.ReadLine();
            }
            //Mencari deret terpanjang
            int panjang = 0;
            for (int i = 0;i < deret.Length; i++)
            {
                if(panjang< deret[i].Length)
                    panjang = deret[i].Length;
            }
            //Adjustment semua deret
            for (int i = 0; i < deret.Length; i++)
            {
                if (panjang > deret[i].Length)
                    deret[i] = new string('0', panjang - deret[i].Length) + deret[i];

            }
            for (int i = 0; i < deret.Length;i++)
            {
                Console.WriteLine(deret[i]);
            }

            string result = "";
            int total = 0;
            int titip = 0;

            //Hitung mulai dari satuan, puluhan, dst...
            for (int pos = panjang-1; pos >= 0; pos--)
            {
                total = titip;
                titip = 0;
                for (int i = 0; i < deret.Length; i++)
                {
                    total += int.Parse(deret[i].Substring(pos, 1));
                }

                if(total > 9)
                {
                    string jmlStr = total.ToString();
                    //123
                    result = jmlStr.Substring(jmlStr.Length - 1,1) + result;
                    // 3 ->
                    titip= int.Parse(jmlStr.Substring(0, jmlStr.Length - 1));
                }
                else
                    result = total.ToString() + result;
            }

            Console.WriteLine(result);
        }
        
    }
}
