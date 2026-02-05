import pg8000

def get_connection():
    return pg8000.connect(
        host="localhost",
        database="dogdaycare",
        user="postgres",
        password="admin123",
        port=5432
    )

try:
    conn = get_connection()
    print("Conexión exitosa desde test.py!")
    conn.close()
except Exception as e:
    print("Error:", e)
