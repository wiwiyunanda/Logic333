
namespace Day06
{
    internal class Pairs
    {
        public Pairs()
        {
            Console.WriteLine("=====Pairs=====");
            Console.Write("Masukkan angka: ");
            int k = int.Parse(Console.ReadLine());

            Console.Write("Masukkan deret: ");
            int[] arr = Array.ConvertAll(Console.ReadLine().Split(" "), int.Parse);

            int sum = 0;
            Array.Sort(arr);
            for (int i = 0; i < arr.Length; i++)
            {
                for (int j = i; j < arr.Length; j++)
                {
                    if (arr[j]- arr[i] == k)
                    {
                        sum++;
                    }
                }
            }
            
            Console.WriteLine(sum);
        }
    }
}
