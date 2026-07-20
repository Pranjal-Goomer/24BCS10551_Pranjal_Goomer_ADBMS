/* Write a query to output the name of the fruits (f_name) from the table 'fruit' which are not present in the table  inventory(f_name column has the name of the fruits and inv_name has the name of the items in inventory). */

/* Write a query to find the list of fruits available in the supermarket.
(f_name column has the name of the fruits and inv_name has the name of inventories, you are suppose to output the name of the fruits.)*/

     SELECT f_name FROM fruit
     Except
     SELECT inv_name FROM inventory;