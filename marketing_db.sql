CREATE DATABASE marketing_db;
USE marketing_db;
CREATE TABLE marketing_campaigns (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(100),
    channel VARCHAR(50),
    spend DECIMAL(10,2),
    revenue DECIMAL(10,2),
    campaign_date DATE
);
INSERT INTO marketing_campaigns VALUES
(1, 'Diwali Sale', 'Facebook', 10000, 15000, '2024-10-10'),
(2, 'Winter Sale', 'Google Ads', 8000, 12000, '2024-11-01'),
(3, 'New User Campaign', 'Instagram', 5000, 4000, '2024-11-15'),
(4, 'Email Blast', 'Email', 2000, 6000, '2024-11-20');
SELECT * FROM marketing_campaigns;
SELECT
    campaign_name,
    channel,
    spend,
    revenue,
    (revenue - spend) / spend AS ROI
FROM marketing_campaigns
WHERE spend > 0;
SELECT
    channel,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    (SUM(revenue) - SUM(spend)) / SUM(spend) AS ROI
FROM marketing_campaigns
GROUP BY channel;

