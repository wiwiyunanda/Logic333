

namespace Pretest
{
    internal class Soal1
    {
        public Soal1()
        {
            Console.WriteLine("======Pre Test Soal 1=====");
            
            Console.Write("Masukan jumlah barang: ");
            int n = Convert.ToInt32(Console.ReadLine());
            List<string> listItem = new List<string>();
            List<List<int>> totalPrice = new List<List<int>>();

            for (int i = 0; i < n; i++)
            {
                Console.Write($"Masukan nama barang ke {i+1}/{n}: ");
                string barang = Console.ReadLine();
                listItem.Add(barang);
                Console.Write("Masukan jumlah harga: ");
                int m = int.Parse(Console.ReadLine());

                List<int> itemPrice = new List<int>();
                for (int j = 0; j < m; j++)
                {
                    Console.Write($"Masukan harga ke {j + 1}/{m}: ");
                    int addPrice = int.Parse(Console.ReadLine());
                    itemPrice.Add(addPrice);
                }
                itemPrice.Sort();
                totalPrice.Add(itemPrice);
            }

            for (int i = 0; i < totalPrice.Count; i++)
            {
               for (int j = 0; j < totalPrice[i].Count; j++)
               {
                    Console.Write($"{listItem[i]} = {totalPrice[i][j]}\t");
               }
                Console.WriteLine();
            }
            int min = 0;
            int max = 0;
            for (int i = 0; i < totalPrice.Count; i++)
            {
                min += totalPrice[i][0];
                max += totalPrice[i][totalPrice[i].Count - 1];
            }
            Console.WriteLine($"Total harga terkecil adalah: {min}");
            Console.WriteLine($"Total harga terbesar adalah: {max}");
        }
    }
    
}
