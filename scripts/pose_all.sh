#!/bin/sh
ROOT="/efs-anthro/anthro-1/anthro_data/*/" #CHNAGE THE DATA DIRECTORY HERE

for dir in $ROOT
do
    for place in $dir*/
    do
        for subject in $place*/
        do
            for videos in $subject*/
            do
                if [ -d $videos ] & [[ $videos == *"video"* ]];
                then
                    echo $videos
                    python demo_inference.py --indir $videos --outdir $videos --gpus 0 --vis_keypoints --skip_on 10 --gpus 0
                fi
                # break
            done
            # break
        done
        # break
    done
    # break
done

# TRY="/efs-anthro/anthro-1/anthro_data/telangana/hospital/867247049850117_06012020135532/video_baby_cheeboard_ruler_2_2472001900335485941/"
# python demo_inference.py --indir $TRY --outdir $TRY --vis_keypoints --skip_on 10 --gpus 0
