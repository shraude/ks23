import pandas as pd
from sklearn.model_selection import cross_val_score
from sklearn.ensemble import AdaBoostClassifier

url = "https://raw.githubusercontent.com/jbrownlee/Datasets/master/pima-indians-diabetes.data.csv"

names = ["Preg", "Glucose", "BP", "Skin", "Insulin",
         "BMI", "Pedigree", "Age", "Class"]

data = pd.read_csv(url, names=names)

X = data.iloc[:,0:8]

Y = data.iloc[:,8]

model = AdaBoostClassifier(
    n_estimators=30,
    random_state=7
)

results = cross_val_score(model, X, Y, cv=10)

print("Accuracy of each fold:")
print(results)

print("\nAverage Accuracy:")
print(results.mean())
