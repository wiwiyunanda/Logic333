namespace Day_04B
{
    internal class CompareTheTriplets
    {
        public CompareTheTriplets()
        {
            //studi kasus
            //input
            //5 6 7
            //3 6 10
            //output
            //1 1

            Console.WriteLine("=====Compare the Triplets====");
            Console.WriteLine("Masukkan nilai masing-masing tes:");
            //nilai orang pertama
            string[] tokens_a0 = Console.ReadLine().Split(' ');
            int a0 = Convert.ToInt32(tokens_a0[0]);
            int a1 = Convert.ToInt32(tokens_a0[1]);
            int a2 = Convert.ToInt32(tokens_a0[2]);

            //nilai orang kedua
            string[] tokens_b0 = Console.ReadLine().Split(' ');
            int b0 = Convert.ToInt32(tokens_b0[0]);
            int b1 = Convert.ToInt32(tokens_b0[1]);
            int b2 = Convert.ToInt32(tokens_b0[2]);
            // Write Your Code Here
            int aliceScore = 0;
            int bobScore = 0;


            if (a0 > b0 || a1 > b1 || a2 > b2)
            {
                aliceScore++;
            }
            if (b0 > a0 || b1 > a1 || b2 > a2)
            {
                bobScore++;
            }
            if (a0 == b0 || a1 == b1 || a2 == b2)
            {
                aliceScore += 0;
                bobScore += 0;
            }

            Console.WriteLine(aliceScore + " " + bobScore);

        }
    }
}
