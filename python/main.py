import keyboard
import pyautogui
import time

rune_aoe = 'f4'
rune_mw = 'f17'

def on_key_press(event):
    if event.name == rune_aoe:
        pyautogui.getWindowsWithTitle('Tibia - Urso no Sigilo')
        time.sleep(0.1)
        pyautogui.click()


keyboard.on_press(on_key_press)

# Wait for keyboard events indefinitelya
keyboard.wait()