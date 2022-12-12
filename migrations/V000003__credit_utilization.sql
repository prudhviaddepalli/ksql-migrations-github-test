CREATE STREAM credit_utilization (customer_id STRING,
                     total_balance BIGINT,
                     total_limit BIGINT)
    WITH (kafka_topic='mysql_credit_utilization',
          value_format='JSON');
