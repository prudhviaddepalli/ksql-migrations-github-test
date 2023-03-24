SET 'auto.offset.reset'='earliest';

CREATE or replace STREAM add_users (customer_id VARCHAR,
                     credit_type VARCHAR,
                     paid_on_time INT)
                         WITH (KAFKA_TOPIC='mysql_credit_payment_history',
              VALUE_FORMAT='JSON',
              KEY_FORMAT='JSON');