import psycopg2

arr = 1
choosed_table = ""

def get_product(id, table):
    global arr
    arr = id
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"SELECT * FROM {table} WHERE id = {id};")
    res = cursor.fetchall()

    cursor.close()
    conn.close()
    return res


def data_table(list, name):
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    if(name == "Categories"):
        cursor.execute(f"UPDATE Categories SET category_id = '{list[0]}', size = '{list[1]}', weight = '{list[2]}', color = '{list[3]}', brand = '{list[4]}' WHERE id = {arr}")
    if(name == "Product"):
        cursor.execute(f"UPDATE Product SET id = '{list[0]}', price_id = '{list[1]}', weight = '{list[2]}', manufacturer_id = '{list[3]}', category_id = '{list[4]}' WHERE id = {arr}")
    if(name == "Product_storage"):
        cursor.execute(f"UPDATE Product_storage SET storage_id = '{list[0]}', values = '{list[1]}', date_in = '{list[2]}', date_out = '{list[3]}' WHERE id = {arr}")
    if(name == "Storage"):
        cursor.execute(f"UPDATE Storage SET storage_id = '{list[0]}', adress = '{list[1]}' WHERE id = {arr}")
    if(name == "Manufacturer"):
        cursor.execute(f"UPDATE Manufacturer SET manufacturer_id = '{list[0]}', purchase_price = '{list[1]}', category = '{list[2]}' WHERE id = {arr}")
          
    conn.commit()
    cursor.execute(f"SELECT * FROM '{name}' WHERE id = {arr}")
    res = cursor.fetchall()

    cursor.close()
    conn.close()
    return res

def delete(name):

    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()

    cursor.execute(f"DELETE FROM {name} WHERE id = {arr}")
    conn.commit()

    cursor.close()
    conn.close()
  
def add(list, name):
    conn = psycopg2.connect(dbname='lab1', user="postgres", 
                        password='admin', host='localhost')
    cursor = conn.cursor()
    
    sql = ""
    val = ""
    
    if(name == "Categories"):
        sql = f"INSERT into Categories (category_id, size, weight, color, brand) values(%s, %s, %s, %s, %s)"
        val = str(list[0]), str(list[1]), str(list[2]), str(list[3]), str(list[4])
    if(name == "Product"):
        sql = f"INSERT into Product (id, price_id, weight, manufacturer_id, category_id) values(%s, %s, %s, %s, %s)"
        val = str(list[0]), str(list[1]), str(list[2]), str(list[3]), str(list[4])
    if(name == "Product_storage"):
        sql = f"INSERT into Product_storage (storage_id, values? date_in, date_out) values(%s, %s, %s, %s)"
        val = str(list[0]), str(list[1]), str(list[2]), str(list[3])
    if(name == "Storage"):
        sql = f"INSERT into Storage (storage_id, adress) values(%s, %s)"
        val = str(list[0]), str(list[1])
    if(name == "Manufacturer"):
        sql = f"INSERT into Manufacturer (manufacturer_id, purchase_price, category) values(%s, %s, %s)"
        val = str(list[0]), str(list[1]), str(list[2])
        
    cursor.execute(sql, val)
    conn.commit()

    cursor.close()
    conn.close()

