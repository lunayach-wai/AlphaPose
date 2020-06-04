import cv2, os
root = '/efs-anthro/anthro-1/anthro_data/gujarat/hospital/863414042692151_29022020153423/'
video = 'video_3_7292384602073015386.mp4'
video_dir = video.split('.')[0]
os.mkdir(root + video_dir)

vidcap = cv2.VideoCapture(root + video)
success,image = vidcap.read()
count = 0
while success:
  cv2.imwrite(root + video_dir + "/%05d.jpg" % count, image)  
  success,image = vidcap.read()
  count += 1