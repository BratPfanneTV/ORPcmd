using System;
using System.Collections.Generic;
using System.Data;
using static System.Math;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace CALCULATOR
{
    class Program
    {
        static void Main(string[] args)
        {
            string sep = ".";
            string calculation = String.Join(" ", args).Replace(",", sep).Replace(".", sep);
            string resultString = new DataTable().Compute(calculation, null).ToString();
            int result = Int32.Parse(resultString);
            Console.WriteLine(result);
        }
    }
}
