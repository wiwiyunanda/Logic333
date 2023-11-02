namespace Day04
{
    internal class AVeryBigSum
    {
        public AVeryBigSum()
        {
            Console.WriteLine("=====A Very Big Sum====");
            Console.WriteLine("Masukkan deret nilai besar:");
            int[] deret = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);

            Array.Sort(deret);
        }
    }
}
