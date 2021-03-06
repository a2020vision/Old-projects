using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;
             

struct ItemInfo
{
    public int numItems;// = 1;
    public string description;// = "";
    public decimal price;// = 0;
    public bool isImported;// = false;
    public bool isFood;// = false;
    public decimal itemTaxRate;
    public decimal itemSalesTax;
    
}

class Program
{
	static void Main()
	{
		const decimal SALESTAX = 0.1M; // 10%
        const decimal IMPORTDUTY = 0.05M; // 5%
        const decimal ROUNDEDTO = 0.05M; // since tax is rounded to nearest nickel according to problem statement
		
		decimal salesTax = 0M;
		decimal total = 0M;
		
		//Console.WriteLine("Hello, world!\n");
		string fileName = "input.txt"; // the default file name
		string fileName2; // for use if the user wants to define a different one
		
		// Check to see if the user wants to get the input from "input.txt", or if not, then where from:
		Console.Write("Name of the input file (or press Enter for default) [input.txt]: ");
		fileName2 = Console.ReadLine();
		if (fileName2.Length < 1) {
			//Console.WriteLine();
			Console.Write("Using default ");
			Console.WriteLine(fileName);
		} else {
			Console.Write("Using ");
			Console.Write(fileName2);
			Console.WriteLine(" as the file name.");
			fileName = fileName2;
		}
		// Next open the file, etc.
		
		// Create a list in which to store the items:
		List<string> itemList = new List<string>();
		
		// And a string to store individual itmes
		string item;
		
		// Create a streamreader object to access the file:
		using (StreamReader sr = new StreamReader(fileName)) 
		{
			while((item = sr.ReadLine()) != null) 
			{
				itemList.Add(item);
				string[] s = Regex.Split(item, " at ");
 
			}
		}
		
		// Now I have a list with the items. I need to parse it.
		ItemInfo inputInfo = new ItemInfo();
		

	}
}