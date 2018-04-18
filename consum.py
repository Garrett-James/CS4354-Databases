from xlrd import open_workbook

import mysql.connector
#pip install mysql-connector

wb = open_workbook('Final_Sheet.xlsx', 'rb')
for s in wb.sheets():
    #print 'Sheet:',s.name
    values = []
    for row in range(2, 29):
        col_value = []
        for col in range(10,12):
            if col == 10:
                value  = (s.cell(row,col).value)
                try : value = str(int(value))
                except : pass
            else:
                value  = (s.cell(row,col).value)
                try : value = str((value))
                except : pass
            col_value.append(value)
        values.append(col_value)

cnx = mysql.connector.connect(user='root', password='root',
                              host='127.0.0.1',
                             database='fruitdatabase')
cursor = cnx.cursor()
add_value = ("INSERT INTO consumer_info "
                "(year, consumption) "
               "VALUES (%s, %s)")


for i in values:
    data_employee = ((i[0]), i[1])
    print(i)
    cursor.execute(add_value, data_employee)
    ##Make sure data is committed to the database
cnx.commit()
