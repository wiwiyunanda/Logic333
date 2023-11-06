
namespace Day06
{
    internal class FindtheMedian
    {
        public FindtheMedian()
        {
            Console.WriteLine("=====Find the Median=====");
            Console.Write("Masukkan deret angka: ");
            int[] n = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
            
            Array.Sort(n);
            int half = n.Length/2;
            int median = 0;
            if (n.Length % 2 == 0) //genap
            {
                int middle1 = n.Length / 2-1;
                int middle2 = n.Length / 2;
                Console.WriteLine($"Median: {n[middle1]},{n[middle2]}");
            }
            else //ganjil
            {
                median = n[half];
                Console.WriteLine($"Median: {median}");
            }
        }
    }
}
