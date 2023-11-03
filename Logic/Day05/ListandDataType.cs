namespace Day05
{
    internal class ListandDataType
    {
        public ListandDataType()
        {
            Console.WriteLine("=====List and Data Type=====");
            //int[] arrInt = new int[5]
            List<int> listInt = new List<int>();
            listInt.Add(1);
            listInt.Add(2);
            listInt.Add(3);

            foreach (var item in listInt)
            {
                Console.WriteLine(item);
            }
        }
    }
}
