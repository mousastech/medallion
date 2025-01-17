-- Databricks notebook source
CREATE CATALOG IF NOT EXISTS ecommerce;

CREATE EXTERNAL VOLUME IF NOT EXISTS files 
LOCATION 's3://dlt-ecommerce/' 
COMMENT 'External volume for raw files';

CREATE SCHEMA IF NOT EXISTS `ecommerce`.`bronze`;

CREATE SCHEMA IF NOT EXISTS `ecommerce`.`silver`;

CREATE SCHEMA IF NOT EXISTS `ecommerce`.`gold`;

-- COMMAND ----------

USE CATALOG ecommerce;
