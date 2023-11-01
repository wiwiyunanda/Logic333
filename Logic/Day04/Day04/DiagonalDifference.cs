using System.Security.AccessControl;

namespace Day04
{
    internal class DiagonalDifference
    {
        public DiagonalDifference()
        {
            Console.WriteLine("====Diagonal Difference====");
            Console.Write("Masukkan nilai Array: ");
            string n = Console.ReadLine();

            int temp = int.Parse(n);
            string[,] arr = new string[temp, temp];
            for (int i = 0; i< temp; i++)
            {
                Console.WriteLine($"Masukkan nilai sesua panjang Array, ex: (3x3) 1 2 3");
                string[] strArr = Console.ReadLine().Split(" ");
                for (int j = 0; j< temp; j++)
                {
                    arr[i,j] = strArr[j];
                }
            }
            int left = 0, right = temp - 1, ldTotal = 0, rdTotal = 0;
            while (temp>0)
            {
                ldTotal += int.Parse(arr[left, left]);
                rdTotal += int.Parse(arr[left++, right--]);
                temp--;
            }
            Console.WriteLine(Math.Abs(ldTotal-rdTotal));
        }
    }
}
