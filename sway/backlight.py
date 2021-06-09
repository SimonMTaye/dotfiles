import subprocess

from sys import argv

MAX = 100
SECOND = 67
MIN = 35
OFF = 0

BASE_COMMAND = ["light",  "-s", "sysfs/leds/asus::kbd_backlight"]

def get_current():
    command = BASE_COMMAND.copy()
    command.append("-G")
    child = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    val = child.stdout.read()
    return float(val)

def set_kbd(val):
    command = BASE_COMMAND.copy()
    command.append("-S")
    command.append(f"{val}")
    subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    pass

def inc(curr):
    if curr == OFF:
        set_kbd(MIN) 
    elif curr < MIN:
        set_kbd(SECOND)
    else:
        set_kbd(MAX)

def dec(curr):
    if curr > SECOND:
        set_kbd(SECOND)
    elif curr > MIN:
        set_kbd(MIN)
    else:
        set_kbd(OFF)


if __name__ == "__main__":
    if len(argv) == 2:
        if argv[1] == "dec":
            dec(get_current())
        elif argv[1] == "inc":
            inc(get_current())
        else:
            print("Use 'dec' to decrease backlight and 'inc' to increase it")
    else:
        print(get_current())
