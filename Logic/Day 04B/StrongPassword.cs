namespace Day_04B
{
    internal class StrongPassword
    {
        public StrongPassword()
        {
            //studi kasus:
            //Its length is at least .
            //It contains at least one digit.
            //It contains at least one lowercase English character.
            //It contains at least one uppercase English character.
            //It contains at least one special character.

            Console.WriteLine("=====Strong Password====");
            Console.Write("Masukkan Password:");
            string password = Console.ReadLine();
            int minLength = 6;
            List<string> requirements = new List<string>
            {
                "0123456789",
                "abcdefghijklmnopqrstuvwxyz",
                "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                "!@#$%^&*()-+"
            };
            foreach (char c in password.ToCharArray())
            {
                int i=0;
                while (i < requirements.Count)
                {
                    if (requirements[i].Contains(c.ToString()))
                    {
                        requirements.RemoveAt(i);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
            Console.WriteLine(Math.Max( requirements.Count, minLength- password.Length));

        }
    }
}
