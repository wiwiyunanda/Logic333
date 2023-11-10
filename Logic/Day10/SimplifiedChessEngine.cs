
using Utility;

namespace Day10
{
    internal class SimplifiedChessEngine
    {
        public SimplifiedChessEngine()
        {
            Console.WriteLine("=====Simplified Chess Engine=====");
            //BA
            Console.Write("Masukkan Posisi White Queen: ");
            string white = Console.ReadLine();

            //A4
            Console.Write("Masukkan Posisi Black Queen: ");
            string black = Console.ReadLine();

            string[,] board = new string[4,4];
            string rowMap = "4321";
            string colMap = "ABCD";

            for (int i = 0; i < board.GetLength(0); i++)
            {
                for (int j = 0; j < board.GetLength(1); j++)
                {
                    //diagonal kiri
                    // i + c == j+ r
                    //c= rowmap.indexOf(white[0])
                    //diagonal kanan
                    //Abs(i-c) == Abj (j-r)
                    if (
                        //diagonal kiri
                        i + colMap.IndexOf(white[0]) == j + rowMap.IndexOf(white[1]) ||
                        //diagonal kanan
                        Math.Abs(i - colMap.IndexOf(white[0])) == Math.Abs(j - rowMap.IndexOf(white[1]))
                         || i == rowMap.IndexOf(white[1]) || j == colMap.IndexOf(white[0])
                        )
                    {
                        board[i, j] = "X";
                    }
                }
            }

            if (board[rowMap.IndexOf(black[1]), colMap.IndexOf(black[0])] == "X")
                Console.WriteLine("NO");
            else
                Console.WriteLine("YES");

            board[rowMap.IndexOf(white[1]), colMap.IndexOf(white[0])] = "WQ";

            board[rowMap.IndexOf(black[1]), colMap.IndexOf(black[0])] = "BQ";


            Printing.Print2D(board);
        }
    }
}


