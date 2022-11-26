import mysql.connector

def conexion():
    conec=mysql.connector.connect(host='localhost',user='root',passwd='',database='apiPy');
    return conec

conexi= conexion()

# query=conexi.cursor();
# query.execute("INSERT INTO personas(tip_doc,numD,nombre,lastN,tel)VALUES  ('%s',' %s', '%s','%s','%s')");
# conexi.commit()
# conexi.close()


# query=conexi.cursor();
# query.execute("INSERT INTO personas(tip_doc,numD,nombre,lastN,tel)VALUES  ('%m', '%n', '%s','%s','%s')");
# conexi.commit()
# conexi.close()

# query2=conexi.cursor()
# query2.execute("SELECT * FROM personas where id_P=5")
# data=query2.fetchall()

# print(data);

# if(conexi):
#     print("melo");
#     if(query):
#         print("melo2");