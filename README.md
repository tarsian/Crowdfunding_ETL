# Crowdfunding_ETL
<img src="https://capsule-render.vercel.app/api?type=waving&color=BDBDC8&height=150&section=header" />

### Instructions
The instructions for this mini project are divided into the following subsections:
  - Create the Category and Subcategory DataFrames
  - Create the Campaign DataFrame
  - Create the Contacts DataFrame
  - Create the Crowdfunding Database
    
### Create the Category and Subcategory DataFrames
  1. Extract and transform the [crowdfunding.xlsx](https://github.com/tarsian/Crowdfunding_ETL/blob/main/Starter_Files/Resources/crowdfunding.xlsx) Excel data to create a category DataFrame that has the following columns:
     -  A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
     -  A "category" column that contains only the category titles
     -  The following image shows this category DataFrame:
     -  
       ![image](https://github.com/tarsian/Crowdfunding_ETL/assets/24801648/565fd9e3-0cee-456b-99f8-9e4dea708d5a)

  2. Export the category DataFrame as <t>$\it{\small{\color{#DD6565}category.csv }}$</t> and save it to your GitHub repository.
  3. Extract and transform the <t>$\it{\small{\color{#DD6565}crowdfunding.xlsx }}$</t> Excel data to create a subcategory DataFrame that has the following columns:
     -  A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
     -  A "subcategory" column that contains only the subcategory titles
     -  The following image shows this subcategory DataFrame:
       
       ![image](https://github.com/tarsian/Crowdfunding_ETL/assets/24801648/f6b09d30-90e6-4c21-94f1-8126e513d734)

  4. Export the subcategory DataFrame as <t>$\it{\small{\color{#DD6565}subcategory.csv }}$</t> and save it to your GitHub repository.

### Create the Campaign DataFrame
  1. Extract and transform the <t>$\it{\small{\color{#DD6565}crowdfunding.xlsx }}$</t> Excel data to create a campaign DataFrame has the following columns:
     -  The "cf_id" column
     -  The "contact_id" column
     -  The "company_name" column
     -  The "blurb" column, renamed to "description"
     -  The "goal" column, converted to the float data type
     -  The "pledged" column, converted to the float data type
     -  The "outcome" column
     -  The "backers_count" column
     -  The "country" column
     -  The "currency" column
     -  The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
     -  The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
     -  The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
     -  The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
     -  The following image shows this campaign DataFrame:
     -  
       ![image](https://github.com/tarsian/Crowdfunding_ETL/assets/24801648/8b3a0dad-50a7-4c5b-94a1-febb140c922b)

  2. Export the campaign DataFrame as <t>$\it{\small{\color{#DD6565}campaign.csv }}$</t> and save it to your GitHub repository.

### Create the Contacts DataFrame
  1. Choose one of the following two options for extracting and transforming the data from the <t>$\it{\small{\color{#DD6565}contacts.xlsx }}$</t> Excel data:
     -  <t>$\bf{Option\ 1}$</t>: Use Python dictionary methods.
     -  <t>$\bf{Option\ 2}$</t>: Use regular expressions.
    
  2. If you chose Option 1, complete the following steps:
     -  Import the <t>$\it{\small{\color{#DD6565}contacts.xlsx }}$</t> file into a DataFrame.
     -  Iterate through the DataFrame, converting each row to a dictionary.
     -  Iterate through each dictionary, doing the following:
       -  Extract the dictionary values from the keys by using a Python list comprehension.
       -  Add the values for each row to a new list.
     -  Create a new DataFrame that contains the extracted data.
     -  Split each "name" column value into a first and last name, and place each in a new column.
     -  Clean and export the DataFrame as <t>$\it{\small{\color{#DD6565}contacts.csv }}$</t> and save it to your GitHub repository.
    
  3. If you chose Option 2, complete the following steps:
     -  Import the <t>$\it{\small{\color{#DD6565}contacts.xlsx }}$</t> file into a DataFrame.
     -  Extract the "contact_id", "name", and "email" columns by using regular expressions.
     -  Create a new DataFrame with the extracted data.
     -  Convert the "contact_id" column to the integer type.
     -  Split each "name" column value into a first and a last name, and place each in a new column.
     -  Clean and then export the DataFrame as <t>$\it{\small{\color{#DD6565}contacts.csv }}$</t> and save it to your GitHub repository.
    
  4. Check that your final DataFrame resembles the one in the following image:

  ![image](https://github.com/tarsian/Crowdfunding_ETL/assets/24801648/f9c22321-671b-4ce3-866b-612fb56f921f)

### Create the Crowdfunding Database
  1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
  2. Use the information from the ERD to create a table schema for each CSV file.
     - Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
    
  3. Save the database schema as a Postgres file named <t>$\it{\small{\color{#DD6565}crowdfunding_db_schema.sql }}$</t>, and save it to your GitHub repository.
  4. Create a new Postgres database, named <t>$\\small{\color{#DD6565}crowdfunding_db }$</t>.
  5. Using the database schema, create the tables in the correct order to handle the foreign keys.
  6. Verify the table creation by running a 'SELECT' statement for each table.
  7. Import each CSV file into its corresponding SQL table.
  8. Verify that each table has the correct data by running a 'SELECT' statement for each.
