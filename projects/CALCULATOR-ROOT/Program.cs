using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CALCULATOR_ROOT
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] args2 = new string[2];
            args2[0] = args[0];
            if(args.Length == 1)
            {
                args2[1] = "2";
            } else
            {
                args2[1] = args[1];
            }
            string sep = Thread.CurrentThread.CurrentCulture.NumberFormat.NumberDecimalSeparator;
            args2[0] = args2[0].Replace(",", sep);
            args2[0] = args2[0].Replace(".", sep);
            args2[1] = args2[1].Replace(",", sep);
            args2[1] = args2[1].Replace(".", sep);
            Console.WriteLine(Math.Pow(Double.Parse(args2[0]), (1 / Double.Parse(args2[1]))));
        }
    }
}
