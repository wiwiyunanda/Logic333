
namespace Day05
{
    internal class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
    }
    internal class ListandObject
    {
        public ListandObject()
        {
            Console.WriteLine("=====List and Object=====");

            List<Student> listStudents = new List<Student>();
            listStudents.Add(new Student() { Id = 1, Name = "Ika", Gender = "Female" });
            listStudents.Add(new Student() { Id = 2, Name = "John", Gender = "Male" });
            listStudents.Add(new Student() { Id = 3, Name = "Queen", Gender = "Female" });

            foreach(var item in listStudents)
            {
                Console.WriteLine($"{item.Id}, {item.Name}, {item.Gender}");
            }
        }
    }
}
