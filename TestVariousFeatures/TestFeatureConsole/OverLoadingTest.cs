using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestFeatureConsole
{
    class OverLoadingTest
    {
        public int globalSum = 0;

        public static int globalStatic;

        static OverLoadingTest()
        {
            globalStatic += 500;

            Console.WriteLine("At static Constructor globalStatic=" + globalStatic);
        }

        public void function1(int i, int j = 0)
        {
            int sum = i + j;
        }

        public void function1(int i)
        {
            Console.WriteLine("i=" + i);
        }
    
    }
}
