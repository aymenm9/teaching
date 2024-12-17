import csv

avg = 0
c = 0
m = 0
with open('data.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        avg += float(row['mark'])
        c += 1
        if float(row['mark']) > m :
            m = float(row['mark'])

print(f"avg of the class : {avg/c}\n, the max of the class is {m}")
