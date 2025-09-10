# An Exploratory Data Analysis (EDA) of the accounts.csv

### 1. The account dataset is complete with no mission values across 351 rows.
```sql
-- Get the total number of accounts
SELECT COUNT(*) AS total_accounts FROM accounts;

```


### 2. Each of the 351 accounts has a unique name and website, suggesting no duplicate company records in this dataset and with only 330 unique primary contacts.
```sql
-- Get the number of unique companies, websites, and primary contacts
SELECT
    COUNT(DISTINCT name) AS unique_companies, -- 351
    COUNT(DISTINCT website) AS unique_websites, -- 351
    COUNT(DISTINCT primary_poc) AS unique_primary_contacts -- 330
FROM accounts;
```

### 3. An uneven Sales Workload: The number of accounts managed by each sales representative is not evenly distributed. Most reps handle between 3 and 8 accounts, but a significant number manage 10 or more, with one representative handling as many as 15. This inbalance could impact client engagement and sales performance.
```sql
-- Count the number of accounts assigned to each sales representative
-- Order by the count to see the busiest reps first
SELECT
    sales_rep_id,
    COUNT(*) AS number_of_accounts
FROM accounts
GROUP BY sales_rep_id
ORDER BY number_of_accounts DESC;

```
