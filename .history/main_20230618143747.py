import sqlite3
import init_db
import pprint


def execute_query(sql: str) -> list:
    with sqlite3.connect("MyDB.sqlite") as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


def input_number() -> int:
    while True:
        answer = input(">>>")
        try:
            int_ans = int(answer)
        except ValueError:
            print("Невірно введена команда")
            continue
        return int_ans


def main():
    with open("README.md", "r", encoding="UTF-8") as hf:
        help_str = hf.read()

    print(help_str)
    while True:
        answer = input_number()
        if answer == 14:
            print(help_str)
        elif answer == 13:
            print("До побачення!")
            break
        elif answer == "0":
            init_db.init_db()
        elif 13 > answer > 0:
            filename = f"query_{answer}.sql"
            with open(filename, "r") as f:
                sql = f.read()
            pprint.pprint(execute_query(sql))


if __name__ == "__main__":
    main()
