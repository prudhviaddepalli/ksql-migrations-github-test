create or replace stream demostream (customer_id VARCHAR,
                     credit_type VARCHAR,
                     paid_on_time INT,
                     demo VARCHAR)
                     with (kafka_topic = 'demostream',value_format = 'json');