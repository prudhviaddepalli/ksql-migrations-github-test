SET 'auto.offset.reset'='earliest';

CREATE OR REPLACE STREAM credit_payment_history (customer_id VARCHAR,
                     credit_type VARCHAR,
                     paid_on_time INT)
                         WITH (KAFKA_TOPIC='mysql_credit_payment_history',
              VALUE_FORMAT='JSON',
              KEY_FORMAT='JSON');
