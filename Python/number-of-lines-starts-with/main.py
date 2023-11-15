import re

def count_log_files(filename):
    log_count = 0
    with open(filename) as file:
        for line in file.readlines():
            if re.match(r'^log', line):
                log_count += 1
    
    return log_count
