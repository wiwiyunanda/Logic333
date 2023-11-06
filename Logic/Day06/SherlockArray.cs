
namespace Day06
{
    internal class SherlockArray
    {
        public SherlockArray()
        {
            Console.WriteLine("=====Sherlock Array=====");
            Console.Write("Masukkan deret angka: ");
            int[] deret = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
            bool result = false;

            for (int i = 0; i < deret.Length; i++)
            {
                int kiri = 0;
                int kanan = 0;
                for (int j = 0; j < deret.Length; j++)
                {
                    //kiri
                    if (j<i)
                    kiri += deret[j];

                    //kanan
                    if (j>i)
                    kanan += deret[j];
                }
                if (kiri == kanan)
                {
                    result = true;
                    break;
                }
            }
            Console.WriteLine(result);
        }
    }
}
