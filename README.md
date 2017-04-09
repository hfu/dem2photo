# dem2photo
dem2photo by pix2pix, using data provided by Geospatial Information Authority of Japan

## to run
at pix2pix folder:
```
DATA_ROOT=../dem2photo name=photo_generation which_direction=AtoB gpu=0 cudnn=0 batchSize=4 save_epoch_freq=5 checkpoints_dir=checkpoints results_dir=results display_freq=1 th train.lua 
```
