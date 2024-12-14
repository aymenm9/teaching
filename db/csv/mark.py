import csv

avg = 0
c = 0
with open('data.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        avg += float(row['mark'])
        c += 1

print(avg/c)