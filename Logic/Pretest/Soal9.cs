
namespace Pretest
{
    internal class Soal9
    {
        public Soal9()
        {
            Console.WriteLine("=====Soal 9=====");
            Console.Write("Masukkan deret angka: ");
            int[] deret = Array.ConvertAll(Console.ReadLine().Split(" "), int.Parse);

            int naik = 0;
            int turun = 0;

            for (int i = 1; i < deret.Length-1; i++)
            {
                if (deret[i-1] < deret[i] && deret[i] > deret[i + 1])
                {
                    naik++;
                }
                else if (deret[i-1] > deret[i] && deret[i] < deret[i + 1])
                {
                    turun++;
                }
            }

            if ((deret.Length - 2) > (deret.Length - 1))
            {
                turun++;
            }
            else
            {
                naik++;
            }
            Console.WriteLine($"Naik = {naik}, turun {turun}");
        }
    }
}
