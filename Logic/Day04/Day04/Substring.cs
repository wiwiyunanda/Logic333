namespace Day04
{
    internal class Substring
    {
        public Substring()
        {
            Console.WriteLine("====Substring====");
            Console.Write("Masukkan string minimal 4 len: ");
            string kata = Console.ReadLine();

            Console.WriteLine($"Dengan start index saja: {kata.Substring(2)}");

            Console.WriteLine($"Dengan start index & length: {kata.Substring(2,2)}");

            Console.WriteLine($"Dengan 3 str terakhir: {kata.Substring(kata.Length -3,3)}");

            string[] jam = ("12:23:45").Split('.');
            Console.WriteLine($"{jam[0]}:{jam[1]}:{jam[2]}");
        }
    }
}
