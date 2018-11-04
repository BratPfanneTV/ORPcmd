using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CALCULATOR_POWER
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length == 2)
            {
                string sep = Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator;
                Console.WriteLine(Math.Pow(Double.Parse(args[0].Replace(".", sep).Replace(",", sep)), Double.Parse(args[1])));
            }
        }
    }
}
