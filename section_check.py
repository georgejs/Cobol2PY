import os
import logging
import tkinter as tk
from tkinter import filedialog

def current_section(line, section='None'):
    section = section
    line = line.upper()
    if line.find('IDENTIFICATION DIVISION')>0:
        section = 'IDD'
    elif line.find('ENVIRONMENT DIVISION')>0:
        section = 'EDD'
    elif line.find('PROGRAM-ID')>0:
        section = 'PID'
    elif line.find('DATA DIVISION')>0:
        section = 'DDD'
    elif line.find('PROCEDURE DIVISION')>0:
        section = 'PDD'
    elif line.find('STOP RUN')>0:
        section = 'SRR'
    else:
        pass

    return section