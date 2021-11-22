## The challenge
Use awk to parse the file sample.csv and print out the unique values of the column with name industry_name_ANZSIC

## A solution
```bash
awk -F, 'NR!=1 {print $3}' sample.csv | sort -u
```