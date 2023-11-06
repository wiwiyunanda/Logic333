
namespace Day06
{
    internal class MinimumLoss
    {
        public MinimumLoss()
        {
            Console.WriteLine("=====Minimum Loss=====");
            Console.Write("Masukkan jumlah deret: ");
            List<string> arr = Console.ReadLine().Split(' ').ToList ();

            int[] selisih= new int[arr.Count];
            for(int i = 0; i < arr.Count; i++)
            { 
                for(int j = 0; j < arr.Count; j++)
                {
                    if (int.Parse(arr[i]) - int.Parse(arr[j]) > 0)
                    {
                        selisih[i] = int.Parse(arr[i]) - int.Parse(arr[j]);
                    }
                }
            }
            Array.Sort(selisih);
            Console.WriteLine(selisih[1]);
        }
    }
}
