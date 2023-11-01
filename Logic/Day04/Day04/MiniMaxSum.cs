namespace Day04
{
    internal class MiniMaxSum
    {
        public MiniMaxSum()
        {
            Console.WriteLine("=====Min Max Sum====");
            Console.WriteLine("Masukkan nilai Array:");
            int[] deret = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);

            Array.Sort(deret);
            int min = 0;
            int max = 0;    
            for (int i = 0; i < deret.Length; i++)
            {
                if (i < deret.Length - 1)
                  min += deret[i];
                
                if (i > 0)
                  max += deret[i];
            }
            Console.WriteLine($"{min} {max}");
        }
    }
}
