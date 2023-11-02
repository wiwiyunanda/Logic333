namespace Day04
{
    internal class Staircase
    {
        public Staircase()
        {
            Console.WriteLine("=====Staircase====");
            Console.WriteLine("Masukkan Jumlah deret yang diinginkan:");

            int arrCount = int.Parse(Console.ReadLine());
           
            for (int i = 0; i <= arrCount; i++)
            {
                string spaces = new string (' ', arrCount - i);
                string sharp = new string('#', i);
                Console.WriteLine(spaces + sharp);
            }
        }
    }
}
