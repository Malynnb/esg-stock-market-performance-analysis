
USE esg_project;

SELECT COUNT(*)
FROM enriched_esg_dataset;

-- check column name
SELECT *
FROM enriched_esg_dataset
LIMIT 5;

DESCRIBE enriched_esg_dataset;



-- dataset overview
SELECT COUNT(*) AS total_companies
FROM enriched_esg_dataset;

-- top ten ESG companies
SELECT Company_name,
       Company_ESG_pulse
FROM enriched_esg_dataset
ORDER BY Company_ESG_pulse DESC
LIMIT 10;


-- ESG group performance 
SELECT ESG_Group,
       AVG(`52w_change price percent`) AS avg_return
FROM enriched_esg_dataset
GROUP BY ESG_Group;


-- count companies in groups
SELECT ESG_Group,
       COUNT(*) AS companies
FROM enriched_esg_dataset
GROUP BY ESG_Group;
-- they are quite well balance 



-- AVG ESG by subindustry
SELECT gicSubindustry,
       AVG(Company_ESG_pulse) AS avg_esg,
       COUNT(*) AS company_count
FROM enriched_esg_dataset
GROUP BY gicSubindustry
HAVING COUNT(*) >= 10
ORDER BY avg_esg DESC;

-- API analysis
SELECT Company_name,
       Symbol,
       Current_Price
FROM enriched_esg_dataset
ORDER BY Current_Price DESC
LIMIT 10;



# Imported enriched ESG dataset into MySQL
# Used SQL for aggregation, ranking, and business analysis
# Validated ESG group performance and subindustry trends
# Queried API-enriched market data


