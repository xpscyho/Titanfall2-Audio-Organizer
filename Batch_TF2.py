import os
import cv2
import glob
print("CLI Titanfall 2 sound seperator")
input_path=input("Input Path:")
origin = os.path.dirname(input_path)
if os.path.exists(origin+"converted_sounds"):
    print("converted_sounds found!")
    overwritePrompt=input("overwrite?[y/n]")
else:
    os.mkdir(origin+"converted_sounds")
os.chdir(origin+"converted_sounds")
if os.path.exists(origin+"conv.log"):
    os.remove(origin+"conv.log")
