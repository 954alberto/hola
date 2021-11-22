#!/usr/bin/env python

import pandas as pd
df = pd.read_csv('sample.csv')
saved_column = df['industry_name_ANZSIC'].unique() #you can also use df['column_name']
#print(sorted(saved_column))
for word in sorted(saved_column):
    print(word)