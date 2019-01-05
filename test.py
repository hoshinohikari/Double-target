import numpy as np
import cv2
import camera_config

cv2.namedWindow("left")
cv2.namedWindow("right")
cv2.namedWindow("depth")
cv2.moveWindow("left", 0, 0)
cv2.moveWindow("right", 600, 0)
cv2.createTrackbar("num", "depth", 0, 10, lambda x: None)
cv2.createTrackbar("blockSize", "depth", 5, 255, lambda x: None)
cap = cv2.VideoCapture(1)

cap.set(3, 1280)
cap.set(4, 480)

def callbackFunc(e, x, y, f, p):
  if e == cv2.EVENT_LBUTTONDOWN:
    print(threeD[y][x])

cv2.setMouseCallback("depth", callbackFunc, None)

while True:
  ret, frame = cap.read()

  frame1 = frame[0:480, 0:640]
  frame2 = frame[0:480, 640:1280]

  img1_rectified = cv2.remap(frame1, camera_config.left_map1, camera_config.left_map2, cv2.INTER_LINEAR)
  img2_rectified = cv2.remap(frame2, camera_config.right_map1, camera_config.right_map2, cv2.INTER_LINEAR)

  imgL = cv2.cvtColor(img1_rectified, cv2.COLOR_BGR2GRAY)
  imgR = cv2.cvtColor(img2_rectified, cv2.COLOR_BGR2GRAY)

  num = cv2.getTrackbarPos("num", "depth")
  blockSize = cv2.getTrackbarPos("blockSize", "depth")
  if blockSize % 2 == 0:
    blockSize += 1
  if blockSize < 5:
    blockSize = 5

  stereo = cv2.StereoBM_create(numDisparities=16*num, blockSize=blockSize)
  disparity = stereo.compute(imgL, imgR)

  disp = cv2.normalize(disparity, disparity, alpha=0, beta=255, norm_type=cv2.NORM_MINMAX, dtype=cv2.CV_8U)

  threeD = cv2.reprojectImageTo3D(disparity.astype(np.float32)/16., camera_config.Q)

  cv2.imshow("left", img1_rectified)
  cv2.imshow("right", img2_rectified)
  cv2.imshow("depth", disp)

  key = cv2.waitKey(1)
  if key == ord("q"):
    break
  elif key == ord("s"):
    cv2.imwrite("./snapshot/BM_left.jpg", imgL)
    cv2.imwrite("./snapshot/BM_right.jpg", imgR)
    cv2.imwrite("./snapshot/BM_depth.jpg", disp)

cap.release()
cv2.destroyAllWindows()