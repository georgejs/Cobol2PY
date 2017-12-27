import os
import logging
import tkinter as tk
from tkinter import filedialog

import convert_file


def open_dialog(fd):
    if fd == 'd':
        try:
            root = tk.Tk()
            root.withdraw()
            file_path = filedialog.askdirectory()
        except:
            print('Not a valid directory')
    elif fd == 'f':
        try:
            root = tk.Tk()
            root.withdraw()
            file_path = filedialog.askopenfilename()
        except:
            print('Not a valid file')
    else:
        print('Not a valid command')

    return file_path

def check_col_file(file_start_path):
    '''
    Check Cobol File
    :param file_start_path: file path for a cobol
    :return:
    '''
    walk = os.walk(file_start_path)
    col_files = []
    for element in walk:
        print(element)
        try:
            path, directories, files = element
        except:
            files = element
        for file in files:
            try:
                if file.find('.cbl')>0:
                    col_files.append(path+'/'+file)
            except:
                print('File cannot be opened')

    return col_files

def main():
    type = input('Would you like to open a (D)irectory or (F)ile\n').lower()
    file_path = open_dialog(type)
    if type == 'd':
        list_of_files = check_col_file(file_path)
        for file in list_of_files:
            with open(file, 'r') as fh:
                convert_file.convert_file(file)
            input('Hit anykey to move to next file')
    elif type == 'f':
        file = file_path
        convert_file.convert_file(file)


if __name__ == '__main__':
    main()