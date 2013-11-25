using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestFeatureConsole
{
    class BusinessManagement
    {
       public static void Process(OverLoadingTest obj)
        {
            obj.globalSum = 100;

            Console.WriteLine("Process globalSum=" + obj.globalSum);
        }

       public static void InitProcess(OverLoadingTest obj)
        {
            obj = new OverLoadingTest();
            obj.globalSum = 200;

            Console.WriteLine("InitProcess globalSum=" + obj.globalSum);
        }

        public static void InitRefProcess(ref OverLoadingTest obj)
        {
            obj = new OverLoadingTest();
            obj.globalSum = 300;

            Console.WriteLine("InitRefProcess globalSum=" + obj.globalSum);
        }
    }
}
