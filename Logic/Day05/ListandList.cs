using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day05
{
    internal class ListandList
    {
        public ListandList()
        {
            List<List<int>> listList = new List<List<int>>();

            List<int> newList = new List<int>();
            newList.Add(1); newList.Add(2); newList.Add(3);

            listList.Add(newList);

            newList = new List<int>();
            newList.Add(4); newList.Add(5); newList.Add(6);

            listList.Add(newList);

            newList = new List<int>();
            newList.Add(7); newList.Add(8); newList.Add(9);

            listList.Add(newList);

            int diag1 = 0;
            int diag2 = 0;

            for (int i = 0; i < listList.Count; i++)
            {
                for (int j = 0; j < listList[i].Count; j++)
                {
                    if (i == j)
                    {
                        diag1 += listList[i][j];
                    }
                    if (i + j == listList.Count - 1)
                    {
                        diag2 += listList[i][j];
                    }

                }
            }
            int result = Math.Abs(diag1 - diag2);
        }
    }
}
