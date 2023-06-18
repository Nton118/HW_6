import sqlite3
import init_db
import pprint


def execute_query(sql: str) -> list:
    with sqlite3.connect("MyDB.sqlite") as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


def main():
    with open('README.md', 'r', encoding="UTF-8") as hf:
        help_str = hf.read()
    
    print(help_str)
    while True:
        answer = input(">>>")
        if answer == "14":
            print(help_str)
        elif answer == "13":
            break
        elif answer == "0":
            init_db.init_db()
        elif 1 >= int(answer) <= 12:
            filename = f"query_{answer}.sql"
            with open(filename, "r") as f:
                sql = f.read()
            print(execute_query(sql))
    else:
        print("Невірно введена команда")


if __name__ == "__main__":
    main()
