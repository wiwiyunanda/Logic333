
namespace Pretest
{
    internal class Soal6
    {
        public Soal6()
        {
            Console.WriteLine("=====Soal 6=====");

            Console.Write("Masukkan tanggal masuk (yyyy-MM-ddThh:mm:ss): ");
            string masuk = Console.ReadLine();
            string[] dtMasukStr = masuk.Split('T');
            int[] dateMasuk = Array.ConvertAll(dtMasukStr[0].Split('-'), int.Parse);
            int[] timeMasuk = Array.ConvertAll(dtMasukStr[1].Split(':'), int.Parse);

            DateTime dtMasuk = new DateTime(dateMasuk[0], dateMasuk[1], dateMasuk[2], timeMasuk[0], timeMasuk[1], timeMasuk[2]);

            Console.Write("Masukkan tanggal keluar ((yyyy-MM-ddThh:mm:ss)): ");
            string keluar = Console.ReadLine();

            string[] dtKeluarStr = keluar.Split('T');
            int[] dateKeluar = Array.ConvertAll(dtKeluarStr[0].Split('-'), int.Parse);
            int[] timeKeluar = Array.ConvertAll(dtKeluarStr[1].Split(':'), int.Parse);

            DateTime dtKeluar = new DateTime(dateKeluar[0], dateKeluar[1], dateKeluar[2], timeKeluar[0], timeKeluar[1], timeKeluar[2]);

            TimeSpan diff = dtKeluar - dtMasuk;
            int jam = diff.Hours;
            int hari = diff.Days;
            int parkir = 0;

            if (hari > 0)
            {
                for (int j = 0; j < hari; j++)
                {
                    parkir += 20000;
                }
            }
            if (jam >= 1)
            {
                parkir += 5000;
            }
            if (jam >= 2 || jam <= 7)
            {
                if (jam <= 7)
                {
                    for (int i = 0; i < jam - 1; i++)
                    {
                        parkir += 3000;
                    }
                }
                else
                {
                    parkir += 18000;
                }
            }
            if (jam >= 8 || jam <= 12)
            {
                if (jam <= 12)
                {
                    for (int i = 0; i < jam - 7; i++)
                    {
                        parkir += 2000;
                    }
                }
                else
                {
                    parkir += 10000;
                }
            }
            if (jam >= 13 || jam <= 23)
            {
                for (int i = 0; i < jam - 12; i++)
                {
                    parkir += 1000;
                }
            }
            Console.WriteLine(parkir);
        }
    }   
}
