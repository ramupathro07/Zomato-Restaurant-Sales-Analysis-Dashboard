
# file handling :python library is providing set
# of funtion to perform all file operations
try:
    # file=open("userinput.text",mode="r")
    file=open("C:\\Users\\ThinkPad L490\\Documents\\datateach.ai\\code.txt",mode="r")         
    print("File Opened")          
    
# except FileNotFoundError:
#     print("Exception : File Not Found")


# try:
#     file=open("code.txt",mode="r")
#     print("File Opened...")
    
#     data=file.read()
#     print(data)
    
#     file.close()
#     print("File Closed...")
    
# except FileNotFoundError:
#     print("Exception : File Not Found")
    # File Opened
    # this is python online session 
    # File Closed...

# try:
#     src=open("code.txt",mode="r")
#     dest=open("nir.txt",mode="w") #filecreates...
#     print("Files are ready..")
    
#     for ch in src:
#         dest.write(ch)
        
#     print("data copied")
    
#     src.close()
#     dest.close()
#     print("Files closed...")
    
# except FileNotFoundError:
#     print("Exception : File Not Found")
    
    # Files are ready.. -->code.txt file
    # data copied       -->copy the data
    # Files closed...   -->paste the data nir.txt file

#          Reading CSV file
# CSV : Comma separated values (Records)
#     create a file having below data in .txt file
#         num,name,balance
#         101,Ramu,5000
#         102,Tarun,6000
#         103,Indra,7000

# import csv 
# try:
#     file=open("data1.csv",mode="r")
#     table=csv.reader(file)
#     print("csv file opened")
    
#     for record in table:
#         print(record)

#     file.close()
#     print("File closed")
    
# except FileNotFoundError:
#     print("Exception : File Not found")
# '''output is'''
#         # csv file opened
#         # ['num', 'name', 'amount']
#         # ['101', 'Ramu', '5000']
#         # ['102', 'Tarun', '6000']
#         # ['103', 'Indra', '7000']
#         # File closed