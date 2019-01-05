import cv2
import numpy as np

left_camera_matrix = np.array([[409.13890, 0., 346.65441],
                               [0., 412.69830, 258.28192],
                               [0., 0., 1.]])
left_distortion = np.array([[-0.27267, 0.06513, -0.00544, 0.00149, 0.00000]])

right_camera_matrix = np.array([[406.83568, 0., 288.68535],
                                [0., 413.81577, 253.65413],
                                [0., 0., 1.]])
right_distortion = np.array([[-0.33316, 0.08728, 0.00740, 0.01142, 0.00000]])

om = np.array([-0.01169, 0.12237, -0.01456])
R = cv2.Rodrigues(om)[0]
T = np.array([-56.57728, 0.95876, 5.97738])

size = (640, 480)

R1, R2, P1, P2, Q, validPixROI1, validPixROI2 = cv2.stereoRectify(left_camera_matrix, left_distortion,
                                                                  right_camera_matrix, right_distortion, size, R,
                                                                  T)

left_map1, left_map2 = cv2.initUndistortRectifyMap(left_camera_matrix, left_distortion, R1, P1, size, cv2.CV_16SC2)
right_map1, right_map2 = cv2.initUndistortRectifyMap(right_camera_matrix, right_distortion, R2, P2, size, cv2.CV_16SC2)