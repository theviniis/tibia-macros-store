import pyscreeze

from keyboard import write as wrt
from time import sleep as slp

slp(2)
wrt("hello world")

# screen object
screen = pyscreeze.screenshot()

rgb_values = screen.getpixel((x, y))
