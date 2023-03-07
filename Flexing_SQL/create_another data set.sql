USE  zerctech 
GO

CREATE TABLE July(
	input_date varchar(50) NOT NULL,
	Gross_sales decimal(20, 2) not NULL,
	Refunds   decimal(20, 2) not NULL,
	Discounts  decimal(20, 2) not NULL,
	Net_sales   decimal(20, 2) not NULL,
	Cost_of_goods   decimal(20, 2) not NULL,
	Gross_profit   decimal(20, 2) not NULL,
	Margin   varchar(50) not NULL,
	Taxes   decimal(20, 2) not NULL,
)
GO

insert into July
SELECT [Date]
      ,convert(decimal,[ Gross_sales ])
      ,convert(decimal,[ Refunds ])
      ,convert(decimal,[ Discounts ])
      ,convert(decimal,[ Net_sales ])
      ,convert(decimal,[ Cost_of_goods ])
      ,convert(decimal,[ Gross_profit ])
      ,[Margin]
      ,convert(decimal,[ Taxes ])
  FROM [dbo].[July_data]
GO

select * from May



CREATE VIEW june_20_record
AS
select *
from June
where input_date = 'jun-20'

CREATE VIEW all_20_record
AS
select *
from May
where input_date = 'may-20'
union
select *
from June
where input_date = 'jun-20'
union
select *
from July
where input_date = 'jul-20'

select *
from all_20_record;

CREATE VIEW Refund
AS
select *
from May
where Refunds > 0
union
select *
from June
where Refunds > 0
union
select *
from July
where Refunds > 0

select *
from Refund;
