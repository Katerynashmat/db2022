from flask import Flask, render_template, request
import sql

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('select.html')

@app.route('/change', methods = ['POST', 'GET'])
def choose():
    global choosed_table
    output = request.form.to_dict()
    choosed_table = output["table"]
    return render_template("index.html", table_name = choosed_table)

@app.route('/result', methods = ['POST', 'GET'])
def result():
    output = request.form.to_dict()
    name = output["id"]
    return render_template("index.html",  table_name = choosed_table, name=sql.get_product(name, choosed_table))

@app.route('/update', methods = ['POST', 'GET'])
def update():
    if request.method == "POST":
        fields = []
        output = request.form.to_dict()
        if choosed_table == "Categories":
            fields.append(output["size"])
            fields.append(output["weight"])
            fields.append(output["color"])
            fields.append(output["brand"])
        if choosed_table == "Product":
            fields.append(output["price_id"])
            fields.append(output["weight"])
            fields.append(output["manufacturer_id"])
            fields.append(output["category_id"])
        if choosed_table == "Product_storage":
            fields.append(output["values"])
            fields.append(output["date_in"])
            fields.append(output["date_out"])
        if choosed_table == "Storage":
            fields.append(output["adress"])
        if choosed_table == "Manufacturer":
            fields.append(output["purchase_price"])
            fields.append(output["category"])
        return  render_template("index.html",  table_name = choosed_table, name1 = sql.change_data(fields, choosed_table))
    else:
        return render_template('update.html',  table_name = choosed_table)

@app.route('/delete')
def delete():
    try:
        sql.delete(choosed_table)
    except:
        print("Deletion failed!")
    else:
        print("Deletion is done!")
    finally:
        return render_template('index.html',  table_name = choosed_table)

@app.route("/create", methods = ['POST', 'GET'])
def create():
    if request.method == "POST":
        fields = []
        output = request.form.to_dict()
        if choosed_table == "Categories":
            fields.append(output["category_id"])
            fields.append(output["size"])
            fields.append(output["weight"])
            fields.append(output["color"])
            fields.append(output["brand"])
        if choosed_table == "Product":
            fields.append(output["id"])
            fields.append(output["price_id"])
            fields.append(output["weight"])
            fields.append(output["manufacturer_id"])
            fields.append(output["category_id"])
        if choosed_table == "Product_storage":
            fields.append(output["storage_id"])
            fields.append(output["values"])
            fields.append(output["date_in"])
            fields.append(output["date_out"])
        if choosed_table == "Storage":
            fields.append(output["storage_id"])
            fields.append(output["adress"])
        if choosed_table == "Manufacturer":
            fields.append(output["manufacturer_id"])
            fields.append(output["purchase_price"])
            fields.append(output["category"])
        return render_template("index.html",  table_name = choosed_table, id = sql.add(fields, choosed_table))
    else:
        return render_template('create.html',  table_name = choosed_table)

if __name__ == '__main__':
    app.run(debug=True)
