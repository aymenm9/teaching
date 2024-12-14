import csv

level = dict()

with open('data.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        level[row['level']] = level.get(row['level'],0) + 1

print(level)