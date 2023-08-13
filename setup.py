from setuptools import setup, find_packages


setup(name='TranReID',
      version='1.0.0',
      description='TransReID: Transformer-based Object Re-Identification',
      author='xxx',
      author_email='xxx',
      url='xxx',
      install_requires=[
          'numpy', 'torch==1.13.1+cu117', 'torchvision==0.14.1+cu117',
          'h5py', 'opencv-python', 'yacs', 'timm==0.4.5'
          ],
      # dev requires
      extras_require={
          'dev': [
              'ipykernel',
              'gdown',
              'kaggle'
          ]
      },
      packages=find_packages(),
      keywords=[
          'Pure Transformer',
          'Object Re-identification'
      ])
