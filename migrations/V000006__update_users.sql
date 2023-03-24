SET 'auto.offset.reset'='earliest';


CREATE STREAM add_users2 (customer_id VARCHAR,
                     credit_type VARCHAR,
                     paid_on_time INT)
                         WITH (KAFKA_TOPIC='mysql_credit_payment_history2',
              VALUE_FORMAT='JSON',
              KEY_FORMAT='JSON');