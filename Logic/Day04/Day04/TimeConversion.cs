namespace Day04
{
    internal class TimeConversion
    {
        public TimeConversion()
        {
            Console.WriteLine("====Time Conversion====");
            Console.Write("Masukkan inputan jam dengan AM/PM: ");
            string timeInput = Console.ReadLine();
            string splitTime = timeInput.Substring(0,8);
            string amPm = timeInput.Substring(8);// for check am or pm
            string[] time = splitTime.Split(':');

            int hour = int.Parse(time[0]);
            string minute = time[1];
            string second = time[2];

            if (amPm == "PM")
            {
                if (hour == 12)
                {
                    hour = 0;
                }
                else if (hour < 12) 
                {
                    hour += 12;
                }
            }
            Console.WriteLine($"{hour}:{minute}:{second}");

            //=============================================================================
            //========>>cara lain:
            //string jam = Console.ReadLine();
            //string[] arrJam = jam.Substring(0,8).Split(":");
            //bool valid = true;
            //if (int.Parse(arrJam[0]) < 0 || int.Parse(arrJam[0])>12)
            //valid = false;
            //if (int.Parse(arrJam[1]) < 0 || int.Parse(arrJam[1])>59)
            //valid = false;
            //if (int.Parse(arrJam[2]) < 0 || int.Parse(arrJam[2])>59)
            //valid = false;
            //if (valid){
            //if (jam.Substring(jam.Length - 2, 2) == "PM")
            //{   if (int.Parse(arrJam[0]) < 12)
            //       arrJam[0] = (int.Parse(arrJam[0]) +12).ToString();
            //}}
            //else
            //Console.WriteLine("Input salah.....");
            //Console.WriteLine(($"{arrJam[0]}: {arrJam[1]}: {arrJam[2]}");
            //


            //============================================================================
            //=======>>cara dengan menggunakan library:
            //DateTime time24h = DateTime.Parse(timeInput);
            //Console.WriteLine($"Waktu sekarang adalah: {time24h.ToString("HH:mm:ss")}");



        }
    }
}
