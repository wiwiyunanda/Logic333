
namespace Day06
{
    internal class DateTimeReview
    {
        public DateTimeReview()
        {
            Console.WriteLine("=====Date Time & Time Span=====");

            //dd-MM-yyyyThh:mm:ss
            //06-11-2023T10:11:12
            Console.Write("Masukkan Tanggal awal: ");
            string awal = Console.ReadLine();
            string[] dtAwalStr = awal.Split('T');
            int[] dateAwal = Array.ConvertAll(dtAwalStr[0].Split('-'), int.Parse);
            int[] timeAwal = Array.ConvertAll(dtAwalStr[0].Split(':'), int.Parse);

            DateTime dtAwal = new DateTime(dateAwal[2], dateAwal[1], dateAwal[0], timeAwal[0], timeAwal[1], timeAwal[2]);

            Console.Write("Masukkan tanggal akhir: ");
            string akhir = Console.ReadLine();

            string[] dtAkhirStr = akhir.Split('T');
            int[] dateAkhir = Array.ConvertAll(dtAkhirStr[0].Split('-'), int.Parse);
            int[] timeAkhir = Array.ConvertAll(dtAkhirStr[0].Split(':'), int.Parse);

            DateTime dtAkhir = new DateTime(dateAkhir[2], dateAkhir[1], dateAkhir[0], timeAkhir[0], timeAkhir[1], timeAkhir[2]);

            TimeSpan diff = dtAkhir - dtAwal;

            Console.WriteLine($"{dtAwal.ToString("dd-MM-yyyyThh:mm:ss")}- {dtAkhir.ToString("dd-MM-yyyyThh:mm:ss")}");

            Console.WriteLine($"Selisih hari : {diff.Days}");
            Console.WriteLine($"Selisih jam : {diff.Hours}");
            Console.WriteLine($"Selisih menit : {diff.Minutes}");
            Console.WriteLine($"Selisih detik : {diff.Seconds}");

            Console.WriteLine($"Total hours : {diff.TotalHours}");

        }
    }
}
