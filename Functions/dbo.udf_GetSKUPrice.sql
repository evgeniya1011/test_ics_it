CREATE FUNCTION dbo.udf_GetSKUPrice(
  @ID_SKU INT
)
RETURNS DECIMAL
AS
BEGIN
	DECLARE @Price DECIMAL;
    SELECT @Price = SUM(Value) / SUM(Quantity)
    FROM dbo.Basket
    WHERE ID_SKU = @ID_SKU;

    RETURN @Price;
END;
