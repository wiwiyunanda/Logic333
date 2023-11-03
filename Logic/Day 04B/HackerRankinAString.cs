namespace Day_04B
{
    internal class HackerRankinAString
    {
        public HackerRankinAString()
        {
            //studi kasus
            //input:
            //hereiamstackerrank
            //hackerworld
            //output:
            //yes
            //no

            Console.WriteLine("=====HackerRank in A String=====");
            Console.Write("Masukkan kata: ");
            string input = Console.ReadLine().ToLower();

            string key = "hackerrank";
            int cursor =0;

            for(int i = 0; i < key.Length; i++)
            {
                for (int j = cursor; j < input.Length; j++)
                {
                    if (key[i] == input[j])
                    {
                        key = key.Remove(i, 1);
                        cursor = j + 1;
                        i--;
                        break;
                    }
                }
                
            }
            Console.WriteLine("{0}", key.Length == 0 ? "YES" : "NO");
        }
    }
}
