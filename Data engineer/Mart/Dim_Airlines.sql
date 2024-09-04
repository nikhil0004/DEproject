-- Databricks notebook source
-- MAGIC %sql
-- MAGIC use mart_geekcoders;

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS Dim_Airlines (
  iata_code STRING,
  icao_code STRING,
  name STRING
) USING DELTA LOCATION '/mnt/mart_datalake/Dim_Airlines'

-- COMMAND ----------

INSERT OVERWRITE Dim_Airlines
SELECT 
iata_code 
,icao_code 
,name 
FROM  cleansed_geekcoders.Airline
