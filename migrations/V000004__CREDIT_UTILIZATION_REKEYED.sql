CREATE STREAM CREDIT_UTILIZATION_REKEYED
  WITH (KAFKA_TOPIC='credit_utilization_rekeyed_2') AS
  SELECT *
  FROM CREDIT_UTILIZATION
  PARTITION BY CUSTOMER_ID;
