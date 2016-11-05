#!bin/bash

counter = 0;
#set CSV separator #
IFS=";"

#f1..fn - values from csv sheet
while read f1 f2 f3
do
#mysql block
mysql --user=root --password=wojtek29 mysql-e "insert  into DRESULTS(DateT, Results, DType) values ('$f1', '$f2', '$f3')"
echo "deployed row: $f1, $f2, $f3"
counter= $((counter + 1))
done < PLIK.csv
echo "niezla  dupcia z tej pani doktor - deploy has been completed"
echo "deployed $counter rows"

