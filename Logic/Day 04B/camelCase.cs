namespace Day_04B
{
    internal class camelCase
    {
        public camelCase()
        {
            //studi kasus
            //input: saveChangesInTheEditor
            //output: 5
            Console.WriteLine("=====camel Case====");
            Console.Write("Masukkan camel case:");
            string input = Console.ReadLine();
            string capitalLib = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

            int jumlah = 0;

            //Huruf pertama kapital?
            if (capitalLib.IndexOf(input[0]) == -1)
                jumlah++;

            //Huruf kapital selanjutnya
            for (int i = 1; i< input.Length; i++)
            {
                if (capitalLib.IndexOf(input[i]) != -1)
                    jumlah++;
            }
            Console.WriteLine(jumlah);
        }
    }
}
