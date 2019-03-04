import cv2
import numpy as np

left_camera_matrix = np.array([[885.43400, 0., 674.11756],
                               [0., 887.57674, 517.38525],
                               [0., 0., 1.]])
left_distortion = np.array([[-0.38471, 0.12847, 0.00209, 0.00214, 0.00000]])

right_camera_matrix = np.array([[888.35950, 0., 659.60319],
                                [0., 892.99743, 517.80199],
                                [0., 0., 1.]])
right_distortion = np.array([[-0.37909, 0.12087, 0.00260, 0.00367, 0.00000]])

om = np.array([-0.00009, 0.02300, -0.00372])
R = cv2.Rodrigues(om)[0]
T = np.array([-614.81702, 12.58066, 38.93339])

size = (1280, 960)

R1, R2, P1, P2, Q, validPixROI1, validPixROI2 = cv2.stereoRectify(left_camera_matrix, left_distortion,
                                                                  right_camera_matrix, right_distortion, size, R,
                                                                  T)

left_map1, left_map2 = cv2.initUndistortRectifyMap(left_camera_matrix, left_distortion, R1, P1, size, cv2.CV_16SC2)
right_map1, right_map2 = cv2.initUndistortRectifyMap(right_camera_matrix, right_distortion, R2, P2, size, cv2.CV_16SC2)
