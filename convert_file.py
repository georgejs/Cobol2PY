import os
import logging
import tkinter as tk
from tkinter import filedialog

import section_check
import syntex_converter

def convert_file(file_path):
    title_of_file = os.path.basename(file_path)
    st_title_of_file = title_of_file.split('.')[0]
    write_path = './converted_files/{}.py'.format(st_title_of_file)
    section = None
    os_write_path = os.path.abspath(write_path)
    open(os_write_path, 'w+').close()
    with open(os_write_path, 'a+') as fh:
        with open(file_path, 'r+') as fr:
            for line in fr:
                section = section_check.current_section(line, section)
                if section == 'IDD' or section == 'EDD' or section == 'PID':
                    value = '# '+line[7:]
                    fh.writelines(value)
                elif section == 'DDD':
                    data_strip = line[7:].strip()
                    data_split = data_strip.split(' ')
                    data_split_final = list()
                    for element in data_split:
                        if len(element) > 0:
                            data_split_final.append(element.strip())
                        else:
                            pass
                    print(data_split_final)
                    value = syntex_converter.data_line(data_split_final)
                    fh.writelines(value)
                else:
                    pass

