namespace Day_04B
{
    internal class Gemstones
    {
        public Gemstones()
        {
            //studi kasus
            //sampel input
            //abcdde
            //baccd
            //eeabg
            //sampel output
            //2
            //Only  and  are gemstones because they are the only types that occur in every rock.

            Console.WriteLine("=====Gemstones=====");
            Console.WriteLine("Masukkan Gemstones: ");
            string[] gems = Console.ReadLine().Split(' ');
            string gemsFound = "";

            for (int i = 0; i < gems[0].Length; i++)
            {
                for (int j = 0; j < gems[1].Length; j++)
                {
                    for(int k = 0; k< gems[2].Length; k++)
                    {
                        if (gems[0][i] == gems[1][j] && gems[1][j] == gems[2][k])
                        { 
                            int idx = gemsFound.IndexOf(gems[0][i]);
                            if (idx == -1)
                               gemsFound += gems[0][i];
                        }
                    }
                }
            }
            Console.WriteLine(gemsFound.Length);
        }
    }
}
