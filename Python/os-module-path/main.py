import os

def search_files(extension):
    result = []
    for root, dirs, files in os.walk("."):        
        for file in files:  
            if file.endswith(extension):            
                result.append(file)
    return result
  
