import os

def run_command(user_input):
    # ОПАСНО: выполнение команд ОС без проверки
    os.system("echo " + user_input)

if __name__ == "__main__":
    run_command("hello")