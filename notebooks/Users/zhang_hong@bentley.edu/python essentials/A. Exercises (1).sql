-- Databricks notebook source
-- MAGIC %md # Exercises for Python Essentials

-- COMMAND ----------

-- MAGIC %md ## Contents
-- MAGIC 1. Data Lab notebooks 
-- MAGIC 2. Exercises

-- COMMAND ----------

-- MAGIC %md ## 1. Data Lab notebooks
-- MAGIC 
-- MAGIC The techniques to be used in these exercises can be found in the notebook links listed below.
-- MAGIC In addition reference links are provided for each exercise.
-- MAGIC 
-- MAGIC - [Basics](https://bentley.cloud.databricks.com/#notebook/90445/command/90446)
-- MAGIC - [Lists](https://bentley.cloud.databricks.com/#notebook/90524/command/90525)
-- MAGIC - [Tuples](https://bentley.cloud.databricks.com/#notebook/90494/command/90495)
-- MAGIC - [Dictionaries](https://bentley.cloud.databricks.com/#notebook/90420/command/857727)
-- MAGIC - [JSON](https://bentley.cloud.databricks.com/#notebook/858024/command/858122)
-- MAGIC - [Comprehensions](https://bentley.cloud.databricks.com/#notebook/90595)
-- MAGIC - [Map, Filter, Reduce](https://bentley.cloud.databricks.com/#notebook/90384/command/90385)
-- MAGIC 
-- MAGIC All links are to notebooks on the Bentley Databricks cluster. Links to GitHub will be provided as soon as possible. 

-- COMMAND ----------

-- MAGIC %md ## 2. Exercises

-- COMMAND ----------

-- MAGIC %md #### Python classes & objects
-- MAGIC __Exercise:__ use three (string) methods on the string defined below and describe your results. 
-- MAGIC 
-- MAGIC Reference: [Basics](https://bentley.cloud.databricks.com/#notebook/90445/command/90446)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_string = "It's a lovely day in the neighborhood."

-- COMMAND ----------

-- MAGIC %md Put your code in the cell below. Notice that it starts with `%python `.

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dir(my_string)

-- COMMAND ----------

-- MAGIC %md #### Python classes & objects
-- MAGIC __Exercise:__ use three (list) methods on the list defined below and describe your results.
-- MAGIC 
-- MAGIC Reference: [Lists](https://bentley.cloud.databricks.com/#notebook/90524/command/90525)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC my_list = [2, 3, 4, 5, 7, 8, 11, 16]

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dir(my_list)

-- COMMAND ----------

-- MAGIC %md Put your code in the cell below. Notice that it starts with `%python `.

-- COMMAND ----------

-- MAGIC %python

-- COMMAND ----------

-- MAGIC %md #### Python basics
-- MAGIC __Exercise:__ Write code to confirm that:
-- MAGIC 1. `"e r"` is a substring of `"data science research lab"` (your code will return `True`)
-- MAGIC 1. `[1,2]` is not an element of the list `[1,2,3]` (your code will return `False`)
-- MAGIC 
-- MAGIC Reference: [Lists](https://bentley.cloud.databricks.com/#notebook/90524/command/90525)

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC "e r" in "data science research lab"

-- COMMAND ----------

-- MAGIC %python
-- MAGIC [1,2] in [1,2,3]

-- COMMAND ----------

-- MAGIC %md #### JSON data format

-- COMMAND ----------

-- MAGIC %md ##### Construct a JSON object
-- MAGIC __Exercise:__ Create JSON data (which is a string) that contains (fake) contact info for three people.
-- MAGIC Store this string in the variable `group_json_string` below.
-- MAGIC - In the following exercises this data will create a list and each element of the list will be a dictionary. 
-- MAGIC - Each dictionary should record the contact info for one person and should include a key called `"name"`.
-- MAGIC 
-- MAGIC Reference: [JSON in Python](https://bentley.cloud.databricks.com/#notebook/858024/command/858122)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC import json
-- MAGIC group_json_string='[{"name": "name1","contact":"name1@gmail.com"},{"name": "name2","contact":"name2@gmail.com"},{"name": "name3","contact":"name3@gmail.com"}]'
-- MAGIC my_json = json.loads(group_json_string)
-- MAGIC my_json

-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------

-- MAGIC %md ##### Create a list from JSON data
-- MAGIC __Exercise:__ convert the JSON data stored in `group_json_string` from the previous exercise into a list using the `loads` function from the `json` library
-- MAGIC 
-- MAGIC Reference: [pandas - Series](https://bentley.cloud.databricks.com/#notebook/89774/command/89775) (fix link)

-- COMMAND ----------

-- MAGIC %python

-- COMMAND ----------

-- MAGIC %md ##### Create a dataframe from a list of dictionaries
-- MAGIC __Exercise:__ create a Pandas dataframe using the JSON data, stored in `group_json_string`, from the previous exercise
-- MAGIC - use the pandas dataframe constructor to do so
-- MAGIC - complete the code cell below be replacing `___` with your code
-- MAGIC 
-- MAGIC Reference:- [pandas - Indexing & Selecting data](https://bentley.cloud.databricks.com/#notebook/561178/command/561179)

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC pd.DataFrame(___)

-- COMMAND ----------

-- MAGIC %md ##### Create a list from JSON data stored in a file
-- MAGIC __Exercise:__ load the JSON data stored in the file `/dbfs/mnt/datalab-datasets/file-samples/one_list.json` into the variable `one_list` using the `load` function from the `json` library
-- MAGIC 
-- MAGIC The contents of this variable will be used in exercises below.
-- MAGIC 
-- MAGIC Reference: TBD

-- COMMAND ----------

-- MAGIC %md #### Python lists

-- COMMAND ----------

-- MAGIC %md There are two ways to work with lists and dictionaries in Python:
-- MAGIC 1. using list and dictionary omprehensions
-- MAGIC 1. using the `map` and `filter` functions
-- MAGIC 
-- MAGIC There is a subsection for each below. Both exercises use the contents of the `one_list` variable created above.

-- COMMAND ----------

-- MAGIC %md In both of the next two exercises use the vector of values from the quantity field, created above.

-- COMMAND ----------

-- MAGIC %md ##### Comprehensions
-- MAGIC __Exercise__: Create three results using a list comprehension
-- MAGIC 1. a list of quantities from each dictionary listed in `one_string`
-- MAGIC 1. a list where each element is a quantity plus `100`
-- MAGIC 1. a list where each element is a quantity plus `100`, but only for quantities that are greater than `250`
-- MAGIC 
-- MAGIC Reference: [Comprehensions](https://bentley.cloud.databricks.com/#notebook/90595/command/90596)

-- COMMAND ----------

-- MAGIC %md ##### Functions `map` & `filter` 
-- MAGIC __Exercise__: Create two results using the `map` function
-- MAGIC 1. a list of quantities from each dictionary listed in `one_string`
-- MAGIC 1. a list where each element is a quantity plus `100`
-- MAGIC 
-- MAGIC Reference:- [Map, Filter, Reduce](https://bentley.cloud.databricks.com/#notebook/90384/command/90385)

-- COMMAND ----------

-- MAGIC %md ##### Functions `map` & `filter` 
-- MAGIC __Exercise__: Create a result using the `map` function
-- MAGIC 1. a list where each element is a quantity plus `100`, but only for quantities that are greater than `250`
-- MAGIC 
-- MAGIC 
-- MAGIC Reference: [Map, Filter, Reduce](https://bentley.cloud.databricks.com/#notebook/90384/command/90385)

-- COMMAND ----------

-- MAGIC %md __The End__