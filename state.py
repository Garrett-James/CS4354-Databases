from xlrd import open_workbook

import mysql.connector
#pip install mysql-connector

wb = open_workbook('Final_Sheet.xlsx', 'rb')
for s in wb.sheets():
    #print 'Sheet:',s.name
    values2 = []
    for row in range(2, 114):
        col_value2 = []
        for col in range(4,9):
            if col == 4:
                value2  = (s.cell(row,col).value)
                try : value2 = str(int(value2))
                except : pass
            else:
                value2  = (s.cell(row,col).value)
                try : value2 = str((value))
                except : pass
            col_value2.append(value2)
        values2.append(col_value2)


cnx = mysql.connector.connect(user='root', password='root',
                              host='127.0.0.1',
                             database='fruitdatabase')
cursor = cnx.cursor()
add_value = ("INSERT INTO stateproduction "
                "(year, state, yield, bearingAcre, yieldPer) "
               "VALUES (%s, %s, %s, %s)")


for i in values2:
    data_employee = ((i[0]), i[1], i[2], i[3])
    print(i)
    cursor.execute(add_value, data_employee)
    #Make sure data is committed to the database
    cnx.commit()
