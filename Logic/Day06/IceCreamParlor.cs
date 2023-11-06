
namespace Day06
{
    internal class IceCreamParlor
    {
        public IceCreamParlor()
        {
            Console.WriteLine("=====Ice Cream Parlor=====");
            Console.Write("Masukkan jumlah uang: ");
            int uang = int.Parse(Console.ReadLine());

            Console.Write("Harga eskrim: ");
            int[] eskrim = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
            bool result = false;
            //kursor
            for (int i = 0; i < eskrim.Length-1; i++)
            {
                //2 eskrim berbeda
                for (int j =  i +1; j < eskrim.Length; j++)
                {
                    if (eskrim[i] + eskrim[j]== uang)
                    {
                        result = true;
                        Console.WriteLine($"{i+1} dan {j+1}");
                    }
                }
            }
            if (result==false) 
            {
                Console.WriteLine("Tidak ada harga yang cocok");
            }
        }
    }
}
