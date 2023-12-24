# GenericPDK DRC Tests


## Folder Structure

```text
📁 testcases
 ┣ 📜README.md                       This file to document the unit tests.
 ┣ 📁 unit                           Contains the unit test structures per rule.
    ┣ 📜<table_name>.gds                Test cases per table.
    ┣ 📜<table_name>.yaml               yaml file contains switches per table. [if needed]
 ┣ 📁 switch_checking                Contains a small test case to be used for testing the DRC switches.
 ┣ 📁 torture                        Contains a few large test cases to test the performance of the rule deck. 
 ```
