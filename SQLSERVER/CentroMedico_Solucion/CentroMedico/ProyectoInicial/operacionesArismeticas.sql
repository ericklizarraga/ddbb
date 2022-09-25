
---------------------------------+-*/%-------------------------------------
declare @num1 decimal(9,2) = 100
declare @num2 decimal(9,2) = 50
declare @result decimal(9,2)

set @result = @num1 +  @num2
print @result

set @result = @num1 -  @num2
print @result

set @result = @num1 *  @num2
print @result

set @result = @num1 /  @num2
print @result

set @result = @num1 %  @num2
print @result

----------------------------------------< <= >= >-----------------------------------
declare @num01 decimal(9,2) = 100
declare @num02 decimal(9,2) = 50

IF @num01 <> @num02
	print 'son distintos'

IF @num01 > @num02
	print 'num02 es menor a num01'

IF @num01 != @num02
	print 'son distintos otra vez'

--------------------string-----------------

declare @text1 varchar(40) = 'esto son caracteres'
declare @text2 varchar(40) = 'esto son caracterez'

if @text1 <> @text2
	print 'son diferentes'

if @text1 < @text2
	print 'text1 es menor a text2'

if @text2 > @text1
	print 'text2 es meyor a text1'

if @text2 = @text1
	print 'son iguales'