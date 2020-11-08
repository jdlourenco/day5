from setuptools import find_packages
from setuptools import setup

REQUIRED_PACKAGES = [
    'gcsfs==0.6.0',
    'pandas==0.24.2',
    'scikit-learn==0.20.4',
    'google-cloud-storage==1.26.0',
    'mlflow==1.8.0',
    'joblib==0.14.1',
    'numpy==1.18.4',
    'psutil==5.7.0',
    'pygeohash==1.2.0',
    'termcolor==1.1.0',
    'xgboost==1.1.1',
    'memoized-property==1.0.3',
    'scipy== 1.2.2',
    'category_encoders==2.2.2',
    'flask==1.1.1',
    'flask-cors']

setup(
    name='TaxiFareModel',
    version='1.0',
    install_requires=REQUIRED_PACKAGES,
    packages=find_packages(),
    include_package_data=True,
    description='Taxi Fare Prediction Pipeline'
)
