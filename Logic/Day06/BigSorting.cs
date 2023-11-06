

namespace Day06
{
    internal class BigSorting
    {
        public BigSorting()
        {
            Console.WriteLine("=====Big Sorting=====");
            Console.Write("Masukkan angka: ");
            int n = Convert.ToInt32(Console.ReadLine().Trim());

            List<string> unsorted = new List<string>();

            for (int i = 0; i < n; i++)
            {
                string unsortedItem = Console.ReadLine();
                unsorted.Add(unsortedItem);
            }
            unsorted.Sort((a, b) => a.Length == b.Length ? string.CompareOrdinal(a,b): a.Length - b.Length);
            Console.WriteLine("-----------------Hasil----------------: ");
            Console.WriteLine(string.Join("\n", unsorted));
        }
    }
}
