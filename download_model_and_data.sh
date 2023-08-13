#!/bin/bash

# Download the pre-trained model checkpoint using gdown if it does not exist

# check if the file exists
if [ ! -f checkpoints/swin_base.pth ]; then
    mkdir -p checkpoints
    gdown https://drive.google.com/uc?id=1uh7tO34tMf73MJfFqyFEGx42UBktTbZU -O checkpoints/swin_base.pth
fi

# Download market-1501 dataset using kaggle
if [ ! -d data/Market-1501-v15.09.15 ]; then
    mkdir -p data
    kaggle datasets download -d pengcw1/market-1501 -p data
    # unzip the dataset
    unzip data/market-1501.zip -d data
    # rename the folder to match schema
    mv data/Market-1501-v15.09.15 data/market1501
    # remove the zip file
    rm data/market-1501.zip
fi
