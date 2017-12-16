import os
import logging
import tkinter as tk
from tkinter import filedialog

def check_comment(text):
    try:
        element = text[7]
        if element == '*':
            test = True
    except:
        test = False

    texts = '# '+text[8:]
    return texts

def data_line(data_array):
    for element in data_array:
        element = element.upper()
        if element == 'DATA':
            line = '# {}'.format(data_array.reverse())
            break
        else:
            line = data_array.reverse()
    return line