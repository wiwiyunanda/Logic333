namespace Day04
{
    internal class SimpleArraySum
    {
        public SimpleArraySum()
        {
            Console.WriteLine("====Simple Array Sum====");
            Console.Write("Masukkan panjang Array: ");
            
            int arrDeret = int.Parse(Console.ReadLine());
            int[] arrInput = new int[arrDeret];
            Random random = new Random();
          
            for (int i = 0; i < arrDeret; i++)
            {
                arrInput[i] = random.Next(0, 100);
                Console.Write($"{arrInput[i]}\t");
            }
            int sum = 0;
            foreach (int i in arrInput)
            {
                Math.Abs(sum += i);
            }
            Console.WriteLine($"Hasilnya : {sum}");
        }
    }
}
