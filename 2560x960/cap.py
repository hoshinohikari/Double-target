import cv2
import numpy as np

cv2.namedWindow("left")
cv2.namedWindow("right")
cv2.moveWindow("left", 0, 0)
cv2.moveWindow("right", 640, 0)

cap = cv2.VideoCapture(2)
cap.set(3, 2560)
cap.set(4, 960)
width, height = cap.get(3), cap.get(4)

i = 0

while(1):
  ret, frame = cap.read()

  framel = frame[0:960, 0:1280]
  framer = frame[0:960, 1280:2560]

  cv2.imshow("left", framel)
  cv2.imshow("right", framer)
  if cv2.waitKey(1) & 0xFF == ord('w'):
    cv2.imwrite("alphal/cv2-%d.bmp"%(i), framel)
    cv2.imwrite("alphar/cv2-%d.bmp"%(i), framer)
    print(i)
    i = i + 1
  elif cv2.waitKey(1) & 0xFF == ord('q'):
    break

print(width, height)

cap.release()
cv2.destroyAllWindows()
