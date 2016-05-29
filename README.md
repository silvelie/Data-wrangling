
refine_original.csv file attached
refine_clean.csv file attached


* Clean up the 'company' column, so all of the misspellings of the brand names are standardized. For example, you can transform the values in the column to be: philips, akzo, van houten and unilever (all lowercase).
* Separate the product code and product number into separate columns i.e. add two new columns called product_code and product_number, containing the product code and number respectively
* Add product categories
 + p = Smartphone
 + v = TV
 + x = Laptop
 + q = Tablet
* Create a new column full_address that concatenates the three address fields (address, city, country), separated by commas.
* Create dummy binary variables for each of them with the prefix company_ and product_ i.e.: 
   + Add four binary (1 or 0) columns for company: company_philips, company_akzo, company_van_houten and company_unilever
   + Add four binary (1 or 0) columns for product category: product_smartphone, product_tv, product_laptop and product_tablet
