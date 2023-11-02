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

            //int total = 0;
            //int minPass = 6;
            //bool checkedNumbers = false;
            //bool checkedLower = false;
            //bool checkedUpper = false;
            //bool checkedSpecial = false;
            //bool checkedminPass = false;

            //if (input < minPass)
            //{
            //    checkedNumbers = true;
            //}
            //for (int i = 0; i < input.Length; i++)
            //{
            //    if (numbers.IndexOf[input[i]] == -1)
            //    {
            //        checkedNumbers = true;
            //    }
            //    if (lower_case.IndexOf[input[i]] == -1)
            //    {
            //        checkedLower = true;
            //    }
            //    if (upper_case.IndexOf(input[i]) == -1)
            //    {
            //        checkedUpper = true;
            //    }
            //    if (special.IndexOf(input, i) == -1)
            //    {
            //        checkedSpecial = true;
            //    }
            //    else
            //        total++;
            //}

        }
    }
}
