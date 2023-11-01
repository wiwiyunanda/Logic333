namespace Day04
{
    internal class Split
    {
        public Split()
        {
            Console.WriteLine("====Split====");
            Console.WriteLine("Masukkan kalimat: ");
            //split dengan spasi
            string kalimat = Console.ReadLine();
            string[] arrKalimat = kalimat.Split(' ');

            int urut = 0;

            foreach (var item in arrKalimat)
            {
                Console.WriteLine($"{++urut}. {item}");
            }
        }
    }
}
