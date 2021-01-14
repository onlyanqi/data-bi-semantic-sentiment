import pandas as pd

df = pd.read_csv('data/TweetsTimeStamp.csv')
df.head()
df.created_at=pd.to_datetime(df.created_at)
df.created_at=pd.to_numeric(df.created_at)
df.to_csv('./data/timestamp.csv', index=False)