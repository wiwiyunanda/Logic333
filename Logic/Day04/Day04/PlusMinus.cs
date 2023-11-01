namespace Day04
{
    internal class PlusMinus
    {
        public PlusMinus()
        {
            Console.WriteLine("=====Plus Minus====");
            Console.WriteLine("Masukkan nilai Array:");

            int arrCount = int.Parse(Console.ReadLine());
            int[] arrInput = new int[arrCount];
            for (int i = 0; i < arrCount; i++)
            {
                Console.Write("Masukkan angka:");
                arrInput[i] = int.Parse( Console.ReadLine());
            }
            int positive = 0;
            int negative = 0;
            int zero = 0;
            foreach (int i in arrInput)
            {
                if (i > 0) positive++;
                else if (i == 0) zero++;
                else negative++; 
            }
            double totalPositif = (double)positive / arrCount;
            double totalNegatif = (double)negative / arrCount;
            double totalZero = (double)zero / arrCount;
            Console.WriteLine($"Terdapat Plus : {positive} Hasil Nilai: {totalPositif}");
            Console.WriteLine($"Terdapat Minus : {negative} Hasil Nilai: {totalNegatif}");
            Console.WriteLine($"Terdapat Zero: {zero} Hasil Nilai: {totalZero}");
        }
    }
}
