import pyautogui
import keyboard
import time

# Set the cookie's coordinates (replace with your actual coordinates)
cookie_position = (310, 460)  # Change this to your cookie's position

# Set a very short delay between clicks to increase speed
 # 10 milliseconds between clicks

print("Press 'down' to start clicking the cookie. Press 'down' again to stop. Press 'Ctrl+C' to force stop.")

clicking = False

def start_clicking():
    global clicking
    clicking = True

def stop_clicking():
    global clicking
    clicking = False

keyboard.add_hotkey('h', start_clicking)
keyboard.add_hotkey('j', stop_clicking)

try:
    while True:
        if clicking:
            pyautogui.click(x=cookie_position[0], y=cookie_position[1])
        time.sleep(0.01)

except KeyboardInterrupt:
    print("Force stopped.")
