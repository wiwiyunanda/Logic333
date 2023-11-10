
namespace Day10
{
    internal class PasswordCracker
    {
        public PasswordCracker()
        {
            Console.WriteLine("=====Password Cracker=====");

            Console.Write("Masukkan kata hint: ");
            string hint = Console.ReadLine().ToLower();
            Console.Write("Masukkan password: ");
            string pswd = Console.ReadLine().ToLower();
            int cursor = 0;

            List<string> hintWords = new List<string>(hint.Split(' '));

            foreach (string hintWord in hintWords)
            {
                if (pswd.Contains(hintWord))
                {
                    pswd = pswd.Replace(hintWord, hintWord + " ");
                }
            }

            if (pswd.Trim() != "")
            {
                Console.WriteLine($"The password becomes: {pswd.Trim()}");
            }
            else if (pswd.Trim() == "")
            {
                Console.WriteLine("Wrong Password");
            }
        }
    }
}
