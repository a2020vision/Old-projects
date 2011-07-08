// Nick Leep, 2011
// ThoughtWorks Code Review, Problem 2 - Sales Tax

// Program to take input from a text file and calculate total and sales tax based on a set of rules:

// Basic sales tax is applicable at a rate of 10% on all goods, except books, food,
// and medical products that are exempt. Import duty is an additional sales tax applicable
// on all imported goods at a rate of 5%, with no exemptions.

// When I purchase items I receive a receipt which lists the name of all the items and their price
// (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid.
// The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains
// (np/100 rounded up to the nearest 0.05) amount of sales tax.

// Write an application that prints out the receipt details for these shopping baskets... 


using System;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;

class Program
{
    static void Main(string[] args)
    {
        const decimal SALESTAX = 0.1M; // 10%
        const decimal IMPORTDUTY = 0.05M; // 5%
        const decimal ROUNDEDTO = 0.05M; // since tax is rounded to nearest nickel according to problem statement

        decimal salesTax = 0M;
        decimal total = 0M;

        string fileName = "input.txt"; // the default file name
        if (args.Length == 0)
        {

            string fileName2; // for use if the user wants to define a different one

            // Check to see if the user wants to get the input from "input.txt", or if not, then where from:
            Console.Write("Name of the input file (or press Enter for default) [input.txt]: ");
            fileName2 = Console.ReadLine();
            if (fileName2.Length < 1)
            {
                //Console.WriteLine();
                Console.Write("Using default ");
                Console.WriteLine(fileName);
            }
            else
            {
                Console.Write("Using ");
                Console.Write(fileName2);
                Console.WriteLine(" as the file name.");
                fileName = fileName2;
            }
        }
        else
        {
            fileName = args[0];
        }
        // Next open the file, etc.

        // create a string to store each item as it is read from the file:
        string item;

        // declare some other variables:
        decimal itemTaxRate, itemTax;

        // read the input from the text file one line at a time. It is important that the text file is formatted properly:
        using (StreamReader sr = new StreamReader(fileName))
        {
            while ((item = sr.ReadLine()) != null)
            {
                // Clear or initialize:
                itemTaxRate = itemTax = 0M;

                // the format of each line should be:

                // [num items, int] [item description] at [item price, dec]

                // Since all of the items in the examples were in quantities of 1, 
                // for now I am ignoring the first part.

                // I will split the string into two parts: the first consisting of [num items] and [item description]; 
                // the second being [item price] which will immediately be converted to a decimal. First, I store it in this array:
                string[] s = Regex.Split(item, " at ");
                decimal itemPrice = Decimal.Parse(s[1]);

                // I will leave the item description in s[0] in order to avoid defining more variables for now.
                // Next, calculate the tax. First to see if the item is imported
                if (Regex.IsMatch(s[0], "imported"))
                {
                    itemTaxRate += IMPORTDUTY;
                }
                // Next, check to see if the item is food, books, or medicine
                // The keywords in the examples are "chocolate", "book", and "pills"
                if (!(Regex.IsMatch(s[0], "chocolate|pills|book")))
                {
                    itemTaxRate += SALESTAX;
                }

                // Next, calculate the actual amount of tax for this item:
                itemTax = ROUNDEDTO * Math.Ceiling(itemPrice * itemTaxRate / ROUNDEDTO);

                // Add this to the total tax:
                salesTax += itemTax;

                // add the item final price to the total:
                total += (itemPrice + itemTax);

                // Finally, output the info from this item:
                Console.Write(s[0]);
                Console.Write(": ");
                Console.WriteLine("{0:f}", itemPrice + itemTax);

                // That's it for the loop.

            }
            // and for the enclosing streamreader block

            // I'm not sure that running all of those calculations with the StreamReader open 
            // is a good idea, but the alternative was to read it all into a list first.
        }

        // display the total sales tax:
        Console.Write("Sales tax: ");
        Console.WriteLine(salesTax);

        // display the total: 
        Console.Write("Total: ");
        Console.WriteLine(total);

        // Final line was included for testing, to prevent window from closing before I could read the output
        Console.ReadLine();
    }
}
