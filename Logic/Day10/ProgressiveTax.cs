
namespace Day10
{
    internal class ProgressiveTax
    {
        public ProgressiveTax()
        {
            Console.WriteLine("=====Progressive Tax=====");
            Console.Write("Masukkan jumlah uang: ");
            double money = int.Parse(Console.ReadLine());
            int[] limit = { 50000, 100000, 200000, int.MaxValue };
            double[] pajak = { 0.05, 0.1, 0.15, 0.25 };

            const double minimum = 25000;
            money -= minimum;
            money = Math.Max(0, money);

            double progressiveTax = 0;
            int limitSebelum = 0;

            for (int i = 0; i < limit.Length; i++)
            {
                if (money > limit[i])
                {
                    progressiveTax += (limit[i] - limitSebelum) * pajak[i];
                    limitSebelum = limit[i];
                }
                else
                {
                    progressiveTax += (money - limitSebelum) * pajak[i];
                    break;
                }
            }

            // Display the result
            Console.WriteLine($"Jumlah Progressive Tax: {progressiveTax}");
        }
    }
    
}
