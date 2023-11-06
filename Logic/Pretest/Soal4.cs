
namespace Pretest
{
    internal class Soal4
    {
        public Soal4()
        {
            Console.WriteLine("=====Soal 4=====");

            Console.Write("Masukan tanggal peminjaman (yyyy-MM-dd): ");
            DateTime pinjam = DateTime.Parse(Console.ReadLine());
            Console.Write("Masukan tanggal pengembalian (yyyy-MM-dd): ");
            DateTime kembali = DateTime.Parse(Console.ReadLine());

            var pinjamMax = new (string, int, int)[]
            {
                ("kalkulus", 5, 1000),
                ("strukturdata", 7, 1500),
                ("matematika", 4, 750)
            };

            int days = (int)(kembali - pinjam).TotalDays;
            int totalDenda = 0;

            foreach (var (judulBuku, maxDays, denda) in pinjamMax)
            {
                if (days > maxDays)
                {
                    totalDenda += (days - maxDays) * denda;
                }
            }
            Console.WriteLine($"Hari: {days}");
            Console.WriteLine($"Denda: {totalDenda}");
        }
    }
    
}
