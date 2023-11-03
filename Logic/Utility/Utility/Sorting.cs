
namespace Utility
{
    public class Sorting
    {
        //input param: int[] arr
        //output return: int[]
        public static int[] Insertion(int[] arr) 
        {
            //   5 4 3 2 1
            //1  4 5 3 2 1
            //2  3 4 5 2 1
            //3  2 3 4 5 1
            //...
            //   1 2 3 4 5

            for (int i=1; i < arr.Length; i++)
            {
                for (int j = i; j > 0; j--)
                {
                    if (arr[j] < arr[j-1])
                    {
                        var temp = arr[j-1];
                        arr[j-1] = arr[j];
                        arr[j] = temp;
                    }
                }
            }
            return arr;
        }


        public static char[] Insertion(char[] arrChar)
        { 
            for (int i=1; i < arrChar.Length;i++)
            {
                for(int j=i; j > 0; j--)
                {
                    if (arrChar[j] < arrChar[j-1])
                    {
                        var temp = arrChar[j - 1];
                        arrChar[j-1] = arrChar[j];
                        arrChar[j] = temp;
                    }
                }
            }
            return arrChar;
        }

    }
}
