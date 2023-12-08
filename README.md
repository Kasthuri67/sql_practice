# sql_practice

### SQL Arithmetic Operators

| Operator | Description          |
|----------|----------------------|
| +        | Add                  |
| -        | Subtract             |
| *        | Multiply             |
| /        | Divide               |
| %        | Modulo (remainder)   |

### SQL Bitwise Operators

| Operator | Description           |
|----------|-----------------------|
| &        | Bitwise AND           |
| |        | Bitwise OR            |
| ^        | Bitwise exclusive OR  |

### SQL Comparison Operators

| Operator | Description                               |
|----------|-------------------------------------------|
| =        | Equal to                                  |
| >        | Greater than                              |
| <        | Less than                                 |
| >=       | Greater than or equal to                  |
| <=       | Less than or equal to                     |
| <>       | Not equal to                              |

### SQL Compound Operators

| Operator | Description                  |
|----------|------------------------------|
| +=       | Add equals                   |
| -=       | Subtract equals              |
| *=       | Multiply equals              |
| /=       | Divide equals                |
| %=       | Modulo equals                |
| &=       | Bitwise AND equals           |
| ^-=      | Bitwise exclusive equals     |
| |*=      | Bitwise OR equals            |

### SQL Logical Operators

| Operator | Description                                                   |
|----------|---------------------------------------------------------------|
| AND      | TRUE if all the conditions separated by AND is TRUE           |
| BETWEEN  | TRUE if the operand is within the range of comparisons        |
| IN       | TRUE if the operand is equal to one of a list of expressions  |
| LIKE     | TRUE if the operand matches a pattern                         |
| NOT      | Displays a record if the condition(s) is NOT TRUE             |
| OR       | TRUE if any of the conditions separated by OR is TRUE         |
| SOME     | TRUE if any of the subquery values meet the condition         |

| Operator | Description                                                                                                          |
|----------|----------------------------------------------------------------------------------------------------------------------|
| ALL      | TRUE if all of the subquery values meet the condition(Returns true if all subquery values meet the condition)        |
| ANY      | TRUE if any of the subquery values meet the condition(Returns true if any subquery values meet the condition)        |
| EXISTS   | TRUE if the subquery returns one or more records (Tests for the existence of any records in a subquery)              |

### SQL Set Operators

| Operator             | Description                         |
|----------------------|-------------------------------------|
| `UNION`, `UNION ALL` | Combine result sets                 |
| `INTERSECT`          | Intersection of result sets         |
| `EXCEPT`             | Set difference                      |

### IS NULL / IS NOT NULL:

- Checks for NULL values.

### Aggregate Functions:

- `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`: Perform operations on sets of values.

### CASE Expression:

The `CASE` expression in SQL provides a way to implement conditional logic within a query. It allows you to perform different actions based on specified conditions.

#### Syntax:

#### Syntax:

```sql
CASE
   WHEN condition1 THEN result1
   WHEN condition2 THEN result2
   ...
   [ELSE else_result]
END
```

### ROW_NUMBER() Function:

- Assigns a unique number to each row within a partition of a result set.

### OVER Clause:

- Used with window functions to perform calculations across a specified range of rows.
