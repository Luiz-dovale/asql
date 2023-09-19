-- Databricks notebook source
SELECT *
  FROM silver.olist.pedido

  -- Selecione todas as colunas da tabela silver.olist.pedido

-- COMMAND ----------

SELECT idPedido,
       idCliente,
       dtEntregue
  FROM silver.olist.pedido

-- COMMAND ----------

SELECT idPedido,
       idCliente,
       dtEntregue,
       dtEstimativaEntrega
       date(dtEntregue) as dataEntrega,
       date(dtEstimativaEntrega) as dataEstimativa
       dtEntregue > dtEstimativaEntrega AS flAtraso
       date(dtEntregue) > date(dtEstimativaEntrega) AS flDataAtraso
       date_diff(dtEntregue, dtEstimativaEntrega) AS nrDiasEntrega
  FROM silver.olist.pedido


-- COMMAND ----------

SELECT *,
       idProduto,
       vlComprimentoCm*vlAlturaCm*vlLarguraCm AS volCm3
  FROM silver.olist.produto

-- COMMAND ----------


