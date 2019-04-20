import numpy as np
import cv2
import camera_config
import random

def Get_Average(list):
    sum = 0
    for item in list:
        sum += item
    return sum/len(list)

cv2.namedWindow("left")
cv2.namedWindow("right")
cv2.namedWindow("left_r")
cv2.namedWindow("right_r")
cv2.namedWindow("depth")  #分别打开左右以及图像深度框图
cv2.moveWindow("left", 0, 0)
cv2.moveWindow("right", 640, 0)
cv2.moveWindow("left_r", 0, 480)
cv2.moveWindow("right_r", 640, 480)
cv2.moveWindow("depth", 1280, 0)  #设定窗口位置

cap = cv2.VideoCapture(0)
cap.set(3, 2560)
cap.set(4, 960)  #打开并设置摄像头

randomnum = 20

numberOfDisparities = ((1280 // 8) + 15) & -16

def callbackFunc(e, x, y, f, p):
  if e == cv2.EVENT_LBUTTONDOWN:
    i = 0
    j = 0
    average_three = []
    while(i < randomnum):
      ran1 = random.randint(-20,21)
      ran2 = random.randint(-20,21)
      x_r = x + ran1
      y_r = y + ran2

      if (x_r > 1279):
        x_r = 1279
      if (y_r > 959):
        y_r = 959

      if (disp[y_r, x_r] >= 20):
        average_three.append(threeD[y_r][x_r][2])
        i = i + 1
        #print('point is [{}, {}] threeD is {}'.format(x_r, y_r, threeD[y_r][x_r]))
      
      if (j > 50):
        break

      j = j + 1

    for c in range(len(average_three)):
      if (average_three[c] > Get_Average(average_three) * 1.5):
        average_three.pop(c)
    print('right point is [{}, {}] threeD is {}'.format(x, y, threeD[y][x]))
    print('average_three is {}'.format(Get_Average(average_three)))  #设置回传函数，鼠标点击时回传信息

cv2.setMouseCallback("depth", callbackFunc, None)  #点击depth图触发函数

while True:
  ret, frame = cap.read()
  frame1 = frame[0:960, 0:1280]
  frame2 = frame[0:960, 1280:2560]  #割开双目图像

  imgL = cv2.cvtColor(frame1, cv2.COLOR_BGR2GRAY)
  imgR = cv2.cvtColor(frame2, cv2.COLOR_BGR2GRAY)

  img1_rectified = cv2.remap(imgL, camera_config.left_map1, camera_config.left_map2, cv2.INTER_LINEAR)
  img2_rectified = cv2.remap(imgR, camera_config.right_map1, camera_config.right_map2, cv2.INTER_LINEAR)  #依据MATLAB测量数据重建无畸变图片

  imageL = cv2.cvtColor(img1_rectified, cv2.COLOR_GRAY2BGR)
  imageR = cv2.cvtColor(img2_rectified, cv2.COLOR_GRAY2BGR)

  '''stereo = cv2.StereoBM_create(numDisparities=16, blockSize=9)  #立体匹配
  stereo.setROI1(camera_config.validPixROI1)
  stereo.setROI2(camera_config.validPixROI2)
  stereo.setPreFilterCap(31)
  stereo.setBlockSize(9)
  stereo.setMinDisparity(0)
  stereo.setNumDisparities(numberOfDisparities)
  stereo.setTextureThreshold(10)
  stereo.setUniquenessRatio(15)
  stereo.setSpeckleWindowSize(100)
  stereo.setSpeckleRange(32)
  stereo.setDisp12MaxDiff(1)'''
  stereo = cv2.StereoSGBM_create(minDisparity=0, numDisparities=numberOfDisparities, blockSize=9, 
                                 P1=8*1*9*9, P2=32*1*9*9, disp12MaxDiff=1, uniquenessRatio=10, 
                                 speckleWindowSize=100, speckleRange=32, mode=cv2.STEREO_SGBM_MODE_SGBM)
  disparity = stereo.compute(img1_rectified, img2_rectified)

  disp = cv2.normalize(disparity, disparity, alpha=0, beta=255, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_8U)  #归一化函数算法

  #threeD = cv2.reprojectImageTo3D(disparity.astype(np.float32)/16., camera_config.Q)  #计算三维坐标数据值
  threeD = cv2.reprojectImageTo3D(disparity, camera_config.Q, handleMissingValues=True)
  threeD = threeD * 16

  cv2.imshow("left", frame1)
  cv2.imshow("right", frame2)
  cv2.imshow("left_r", imgL)
  cv2.imshow("right_r", imgR)
  cv2.imshow("depth", disp)  #显示出修正畸变前后以及深度图的双目画面

  key = cv2.waitKey(1)
  if key == ord("q"):
    break
  elif key == ord("s"):
    cv2.imwrite("./snapshot/BM_left.jpg", imgL)
    cv2.imwrite("./snapshot/BM_right.jpg", imgR)
    cv2.imwrite("./snapshot/BM_depth.jpg", disp)

cap.release()
cv2.destroyAllWindows()
