import cv2
import numpy as np

cap = cv2.VideoCapture(1)

width, height = cap.get(3), cap.get(4)

while(1):
  ret, frame = cap.read()
  framel = frame[0:240, 0:320]
  framer = frame[0:240, 320:640]
  cv2.imshow("capl", framel)
  cv2.imshow("capr", framer)
  if cv2.waitKey(1) & 0xFF == ord('q'):
    break

print(width, height)

cap.release()
cv2.destroyAllWindows()