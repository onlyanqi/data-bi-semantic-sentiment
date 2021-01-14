import pandas as pd

filePath = './data/sudeste.csv'
df = pd.read_csv(filePath)
df.info()
# df = df[df['yr'] == 2015]
df = df.sample(frac=.01)
df.replace(0, pd.np.nan, inplace=True)
df.isnull().sum()
df.dropna(axis=0, thresh=16, inplace=True)
# df.truncate(after=10000)
df.drop(columns=['prcp', 'gbrd', 'wdsp', 'gust'], inplace=True)  # too many null values
df.drop(columns=['smax', 'smin', 'tmax', 'tmin', 'dmax', 'dmin', 'hmax', 'hmin'], inplace=True)
df.info()
df.to_csv('./data/sudeste_new.csv', index=False)
