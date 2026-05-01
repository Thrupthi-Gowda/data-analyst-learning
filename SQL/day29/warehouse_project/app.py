from flask import Flask, render_template, request, redirect
import mysql.connector

app = Flask(__name__)

# -------------------------------
# DATABASE CONNECTION
# -------------------------------
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Chandu@2003",
    database="warehouse_db"
)

# -------------------------------
# HOME - SHOW ALL PRODUCTS
# -------------------------------
@app.route('/')
def home():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM products")
    data = cursor.fetchall()
    return render_template("index.html", data=data)


# -------------------------------
# ADD PRODUCT (CREATE)
# -------------------------------
@app.route('/add', methods=['POST'])
def add_product():
    id = request.form['id']
    name = request.form['name']
    warehouse = request.form['warehouse']
    quantity = request.form['quantity']
    price = request.form['price']

    cursor = db.cursor()
    query = "INSERT INTO products (id, name, warehouse, quantity, price) VALUES (%s, %s, %s, %s, %s)"
    values = (id, name, warehouse, quantity, price)

    cursor.execute(query, values)
    db.commit()

    return redirect('/')


# -------------------------------
# DELETE PRODUCT
# -------------------------------
@app.route('/delete/<int:id>')
def delete_product(id):
    cursor = db.cursor()
    cursor.execute("DELETE FROM products WHERE id = %s", (id,))
    db.commit()

    return redirect('/')


# -------------------------------
# UPDATE PRODUCT
# -------------------------------
@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update_product(id):
    cursor = db.cursor()

    # UPDATE DATA
    if request.method == 'POST':
        name = request.form['name']
        warehouse = request.form['warehouse']
        quantity = request.form['quantity']
        price = request.form['price']

        query = """
        UPDATE products
        SET name=%s, warehouse=%s, quantity=%s, price=%s
        WHERE id=%s
        """
        values = (name, warehouse, quantity, price, id)

        cursor.execute(query, values)
        db.commit()

        return redirect('/')

    # FETCH DATA FOR FORM
    cursor.execute("SELECT * FROM products WHERE id=%s", (id,))
    data = cursor.fetchone()

    return render_template("update.html", data=data)


# -------------------------------
# RUN APP
# -------------------------------
if __name__ == "__main__":
    app.run(debug=True)