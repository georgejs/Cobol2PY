ID = False  # ID: IDENTIFICATION DIVISION
ED = False  # ED: ENVIRONMENT DIVISION
DD = False  # DD: DATA DIVISION
PD = False  # PD: PROCEDURE DIVISION

PI = False  # PI: PROGRAM-ID
SR = False  # SR: STOP RUN


def cdc(path):
    with open(path, 'r+') as cbl_fh:
        for line in cbl_fh:
            line = line.upper()
        if line.find('IDENTIFICATIONS DIVISION.') >= 0:
            ID = True
        if line.find('ENVIRONMENT DIVISION.') >= 0:
            ED = True
        if line.find('DATA DIVISION.') >= 0:
            DD = True
        if line.find('PROCEDURE DIVISION.') >= 0:
            PD = True
        if line.find('PROGRAM-ID.') >= 0:
            PI = True
        if line.find('DATA DIVISION.') >= 0:
            SR = True

    if ID and ED and DD and PD and PI and SR:
        return True
    else:
        if not ID:
            print('IDENTIFICATIONS DIVISION - Missing')
        if not ED:
            print('ENVIRONMENT DIVISION - Missing')
        if not DD:
            print('DATA DIVISION - Missing')
        if not PD:
            print('PROCEDURE DIVISION - Missing')
        if not PI:
            print('PROGRAM-ID - Missing')
        if not SR:
            print('STOP RUN - Missing')
        return False
