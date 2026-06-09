from flask import Flask, render_template, request, redirect
import mysql.connector

app = Flask(__name__)

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Chandu@2003",
    database="warehouse_analytics"
)

cursor = conn.cursor()

@app.route('/')
def index():

    search = request.args.get('search')

    if search:
        query = """
        SELECT * FROM products
        WHERE product_name LIKE %s
        OR warehouse_name LIKE %s
        """

        value = (
            '%' + search + '%',
            '%' + search + '%'
        )

        cursor.execute(query, value)

    else:
        cursor.execute("SELECT * FROM products")

    data = cursor.fetchall()

    cursor.execute("SELECT COUNT(*) FROM products")
    total_products = cursor.fetchone()[0]

    cursor.execute("SELECT IFNULL(SUM(quantity),0) FROM products")
    total_stock = cursor.fetchone()[0]

    cursor.execute(
        "SELECT IFNULL(SUM(quantity * price),0) FROM products"
    )
    inventory_value = cursor.fetchone()[0]

    cursor.execute("""
    SELECT COUNT(*)
    FROM products
    WHERE quantity <= low_stock_limit
    """)
    low_stock = cursor.fetchone()[0]

    return render_template(
        "index.html",
        data=data,
        total_products=total_products,
        total_stock=total_stock,
        inventory_value=inventory_value,
        low_stock=low_stock
    )

@app.route('/add', methods=['POST'])
def add():

    product_name = request.form['product_name']
    warehouse_name = request.form['warehouse_name']
    quantity = request.form['quantity']
    price = request.form['price']

    query = """
    INSERT INTO products
    (product_name, warehouse_name, quantity, price)
    VALUES (%s,%s,%s,%s)
    """

    values = (
        product_name,
        warehouse_name,
        quantity,
        price
    )

    cursor.execute(query, values)
    conn.commit()

    return redirect('/')

@app.route('/delete/<int:id>')
def delete(id):

    cursor.execute(
        "DELETE FROM products WHERE product_id=%s",
        (id,)
    )

    conn.commit()

    return redirect('/')

@app.route('/update/<int:id>', methods=['GET', 'POST'])
def update(id):

    if request.method == 'POST':

        product_name = request.form['product_name']
        warehouse_name = request.form['warehouse_name']
        quantity = request.form['quantity']
        price = request.form['price']

        query = """
        UPDATE products
        SET product_name=%s,
            warehouse_name=%s,
            quantity=%s,
            price=%s
        WHERE product_id=%s
        """

        values = (
            product_name,
            warehouse_name,
            quantity,
            price,
            id
        )

        cursor.execute(query, values)
        conn.commit()

        return redirect('/')

    cursor.execute(
        "SELECT * FROM products WHERE product_id=%s",
        (id,)
    )

    data = cursor.fetchone()

    return render_template(
        "update.html",
        data=data
    )

if __name__ == "__main__":
    app.run(debug=True)