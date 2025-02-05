DROP TABLE currencies; 

CREATE TABLE currencies (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(100) NOT NULL,
    currency_symbol VARCHAR(10),
    iso_code VARCHAR(5)  NOT NULL,
    exchange_rate DECIMAL(15, 6),  -- Exchange rate with precision for currency conversion
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    country varchar(45)
);

INSERT INTO currencies (currency_name, currency_symbol, iso_code, exchange_rate, country)
VALUES
    ('Canadian Dollar', 'CAD$', 'CAD', NULL, 'CANADA'),      -- Canada
    ('Euro', '€', 'EUR', NULL, 'FRANCE'),                     -- France
    ('Euro', '€', 'EUR', NULL, 'GERMANY'),                     -- Germany
    ('US Dollar', '$', 'USD', NULL, 'UNITED STATES OF AMERICA'),                -- United States of America
    ('Mexican Peso', '$', 'MXN', NULL, 'MEXICO');             -- Mexico
    