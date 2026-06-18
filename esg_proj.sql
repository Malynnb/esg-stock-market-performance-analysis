
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




DESCRIBE enriched_esg_dataset;

-- top return co
SELECT Company_name,
       Symbol,
       Company_ESG_pulse,
       `52w_change price percent` AS return_pct
FROM enriched_esg_dataset
ORDER BY `52w_change price percent` DESC
LIMIT 10;

-- lowest return co
SELECT Company_name,
       Symbol,
       Company_ESG_pulse,
       `52w_change price percent` AS return_pct
FROM enriched_esg_dataset
ORDER BY `52w_change price percent` ASC
LIMIT 10;



-- business questions
-- How are ESG scores distributed across industrial companies?
SELECT ESG_Group,
       COUNT(*) AS companies
FROM enriched_esg_dataset
GROUP BY ESG_Group;

-- Do high ESG companies achieve stronger stock returns?
SELECT ESG_Group,
       AVG(`52w_change price percent`) AS avg_return
FROM enriched_esg_dataset
GROUP BY ESG_Group;

-- Which subindustries demonstrate the strongest ESG performance?
SELECT gicSubindustry,
       AVG(Company_ESG_pulse) AS avg_esg
FROM enriched_esg_dataset
GROUP BY gicSubindustry
ORDER BY avg_esg DESC;





-- Key SQL Insights:
-- Most companies fall within the Medium ESG category
-- High ESG companies achieved stronger average 52-week returns
-- ESG performance varies across subindustries
-- Company-level analysis revealed differences in financial performance among firms with similar ESG ratings



--  SUMMARY
-- Dataset exploration and validation
-- ESG distribution analysis
-- ESG group performance comparison
-- Subindustry benchmarking
-- ompany-level analysis
-- API data validation
-- Dashboard support queries