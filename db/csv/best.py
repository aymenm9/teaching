import csv
from collections import OrderedDict

languages = dict()

with open('data.csv','r') as file:
    reader = csv.DictReader(file)
    for row in reader:
        languages[row['language']] = languages.get(row['language'],0) + 1

print(languages)