
namespace Day10
{
    internal class GrossUpTax
    {
        public GrossUpTax()
        {
            Console.WriteLine("=====Gross Up Tax=====");
            // 	Sample Output 1	 	 	 	 	 	 	 
            //Income	 	 	 	 	    25,000.00	 	        Income	 	 	 	 	 	    55,000.00	 
            //Tax Allowance	 	 	 	            -  	+	 	    Tax Allowance	 	 	 	     1,578.00	+
            //Total Income	 	 	 	    25,000.00	 	        Total Income	 	 	 	    56,578.00	 
            //Free Tax	 	 	 	 	    25,000.00	-	 	    Free Tax	 	 	 	 	    25,000.00	-
            //Taxable-Income	 	 	 	            -  	 	 	Taxable-Income	 	 	 	    31,578.00	 
            //Tax Payable	 	 	 	 	            -  	 	 	Tax Payable	 	 	 	 	     1,578.00
            //------------------------------------------------------------------------------------------------------------
            //Instruction:
            // Range            Tax
            //0 - 50000         5 %
            //50000 - 100000    10 %
            //100000 - 200000   15 %
            //> 200000          25 %
            //------------------------------------------------------------------------------------------------------------

            Console.Write("Masukkan jumlah income: ");
            double income = Convert.ToDouble(Console.ReadLine());
            double taxInCome = GrossUpCalculator(income - 25000, 0);

            Console.WriteLine($"{income} {taxInCome}");
        }
        public double GrossUpCalculator(double taxIncome, double taxAllowance)
        {
            //taxIncome += taxAllowance;
            double totalIncome = taxIncome + taxAllowance;
            double tax = 0;
            if (totalIncome > 0 && totalIncome <= 50000)
                tax = totalIncome * 0.05;
            else if (totalIncome > 50000 && totalIncome <= 100000)
                tax = 2500 + ((taxIncome - 50000) * 0.1);
            else if (totalIncome > 100000 && totalIncome <= 200000)
                tax = 7500 + ((totalIncome - 100000) * 0.15);
            else if (totalIncome > 200000)
                tax = 22500 + ((totalIncome - 200000) * 0.25);

            tax= Math.Floor(tax);

            if (tax == taxAllowance)
                return GrossUpCalculator(taxIncome, tax);
            else
                return tax;
        }
    }
}

//---------------------------------Cara lain-------------------------------//

        //public GrossUpTax()
        //{
        //    Console.WriteLine("=== Gross Up Tax ===");
        //    Console.Write("Input income : ");
        //    int income = int.Parse(Console.ReadLine());
        //    Console.WriteLine();
        //    int taxAllowance = 0;
        //    int freeTax = 25000;
        //    int totalIncome = 0;
        //    CalculateTax(income, taxAllowance, freeTax);
        //    Console.ReadLine();
        //}
        //static void CalculateTax(int income, int taxAllowance, int freeTax)
        //{
        //    int totalIncome = income + taxAllowance;
        //    int taxableIncome = totalIncome - freeTax;
        //    double percent;
        //    if (taxableIncome <= 50000)
        //        percent = 0.05;
        //    else if (taxableIncome <= 100000)
        //        percent = 0.1;
        //    else if (taxableIncome <= 200000)
        //        percent = 0.15;
        //    else
        //        percent = 0.25;
        //    int taxPayable = Convert.ToInt32(taxableIncome * percent);
        //    if (taxAllowance == taxPayable)
        //    {
        //        Console.WriteLine($"Income          : {income}");
        //        Console.WriteLine($"Tax Allowance   : {taxAllowance}");
        //        Console.WriteLine($"Total Income    : {totalIncome}");
        //        Console.WriteLine($"Free Tax        : {freeTax}");
        //        Console.WriteLine($"Taxable Income  : {taxableIncome}");
        //        Console.WriteLine($"Tax Payable     : {taxPayable}");
        //        //Console.WriteLine(yourNumber.ToString("N0"));
        //        //int truncatedNumber = (int)yourNumber;
        //        Console.WriteLine("\nTax calculation complete!");
        //        return;
        //    }
        //    CalculateTax(income, taxPayable, freeTax);
        //}
