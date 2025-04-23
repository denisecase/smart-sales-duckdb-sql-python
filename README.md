# smart-sales-duckdb-sql-python

>Use DuckDB and SQL to explore a star-schema data warehouse built from the realistic Microsoft Contoso Sales dataset - includes a Python Jupyter notebook for visualization and presentation

This repo is an extension to the DuckDB / SQL / CSV project that only differs by adding Python.
For information about installing DuckDB and getting started, see [smart-sales-duckdb-sql](https://github.com/denisecase/smart-sales-duckdb-sql).

We add Python so we we can present our insights in a Jupyter notebook. 

---

## Step 1: Copy the Repo / Clone it Down / Open in VS Code / Create Local Virtual Environment

- Log into GitHub. Click on this repo and Copy the template to get it into your GitHub account. 
- Click on your new GitHub repo and clone it down. 
- Open the repo on your machine in VS Code. 

See [pro-analytics-01/](https://github.com/denisecase/pro-analytics-01/) for more information. 
See 01-machine-setup and 02-Project-Initialization. 
Make sure all the tools, including Python are installed. 
Follow the steps to create, activate, and install required packages into your local project virtual environment (named .venv). 
Key steps are summarized in this [requirements.txt](requirements.txt) file, follow steps ABCD.

PowerShell (Windows or Core) - Steps ABC - click Yes when asked

```shell
py -m venv .venv
.\.venv\Scripts\activate
py -m pip install --upgrade pip setuptools wheel
py -m pip install --upgrade -r requirements.txt
```

Mac/Linux/bash/zsh/Git Bash/WSL - Steps ABC - click Yes when asked

```shell
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade -r requirements.txt
```

IMPORTANT: You must also do Step D: VS Code - Select Interpreter. See requirements.txt for more. 

---

## Step 2: Open a Terminal And Recreate the DW (Optional)

IMPORTANT: Restart VS Code if it was open while installing DuckDB so it gets the updated system environment. 

With the project repository open in VS Code, open a new terminal using the VS Code menu: Terminal / New Terminal. 
By default, this opens PowerShell on Windows and zsh or bash on macOS or Linux.  
If you're on Windows, you can also select Git Bash from the dropdown if it's installed.

Mac/Linux/bash/zsh/Git Bash/WSL

```shell
duckdb dw/sales.duckdb < sql/00_build_dw.sql
```

PowerShell 

```shell
Get-Content sql/00_build_dw.sql | duckdb dw/sales.duckdb
```

---

## Step 3: Open the DuckDB Data Warehouse (DW)

Use your terminal to open the duckdb file. 

The following command works in all terminal types (thank you DuckDB!)

```shell
duckdb dw/sales.duckdb
```

## Know How to Exit the DuckDB CLI

To exit the DuckDB CLI, either type EITHER one of these or try CTRL D or CTRL Z:

```shell
.quit
.exit
```

---

## Step 4: Run a SQL Script

### Option 1: Run from DuckDB CLI. If you closed it, we'll open it again.

First, open the DuckDB CLI and then type the SQL command.

The following command works in all terminal types (thank you DuckDB!)

```shell
duckdb dw/sales.duckdb
```

Once in the CLI, **at the `D` prompt**, type your SQL commands one at a time.

For example, try:

```sql
SHOW TABLES;
```

### Option 2: Run from a VS Code Terminal (zsh/bash/Git Bash if Windows). 

To execute a saved SQL file from a VS Code terminal (NOT the DuckDB CLI):

```shell
duckdb dw/sales.duckdb < sql/11_tables_show_list.sql
```

In PowerShell use:

```shell
Get-Content sql/11_tables_show_list.sql | duckdb dw/sales.duckdb
```

## Additional Notes

Source: Kaggle (448 MB Full Clean Dataset): <https://www.kaggle.com/datasets/bhanuthakurr/cleaned-contoso-dataset>

See: [schema.txt](schema.txt) to get an overview of the data warehouse. 
