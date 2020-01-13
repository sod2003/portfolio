#!/usr/bin/env python3
import sqlite3

def main():
    print('Connecting to database')
    db = sqlite3.connect('db-api.db') # Will create the db-api.db file if it does not already exist.
    cur = db.cursor()
    print('Creating table')
    cur.execute("DROP TABLE IF EXISTS test")
    cur.execute("""
        CREATE TABLE test (
            id INTEGER PRIMARY KEY, string TEXT, number INTEGER
        )
        """)
    print('Inserting 1st row')
    cur.execute("""
        INSERT INTO test (string, number) VALUES ('one', 1)
        """)
    print('Inserting 2nd row')
    cur.execute("""
        INSERT INTO test (string, number) VALUES ('two', 2)
        """)
    print('Inserting 3rd row')
    cur.execute("""
        INSERT INTO test (string, number) VALUES ('three', 3)
        """)
    print('Committing changes')
    db.commit()
    print('Counting rows')
    cur.execute("SELECT COUNT(*) FROM test")
    count = cur.fetchone()[0]
    print(f'There are {count} rows in the table')
    print('Reading rows')
    for row in cur.execute("SELECT * FROM test"):
        print(row)
    print('Dropping table')
    cur.execute("DROP TABLE test")
    print('Closing database')
    db.close()

if __name__ == '__main__': main()
