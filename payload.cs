using System;

namespace EvilNamespace {
    public class EvilClass {
        public static void Execute() {
            Console.WriteLine("Payload executed in memory!");
            System.Diagnostics.Process.Start("calc.exe"); // Example payload
        }
    }
}
