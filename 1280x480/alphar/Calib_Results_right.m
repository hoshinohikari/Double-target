% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 428.167972827517701 ; 424.477090884342260 ];

%-- Principal point:
cc = [ 313.781930459074033 ; 270.602821619797567 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.333494651481125 ; 0.087626279865054 ; 0.003482322065698 ; 0.000425322171714 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 6.433311786881970 ; 6.120745571862400 ];

%-- Principal point uncertainty:
cc_error = [ 10.107894956981498 ; 9.040994828524722 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.021836156830019 ; 0.021883059337269 ; 0.002969422834812 ; 0.003479781372593 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.136163e+00 ; -2.183024e+00 ; -6.177716e-02 ];
Tc_1  = [ -8.624206e+02 ; -4.094390e+02 ; 1.072897e+03 ];
omc_error_1 = [ 1.952644e-02 ; 1.645348e-02 ; 3.739701e-02 ];
Tc_error_1  = [ 2.599658e+01 ; 2.523154e+01 ; 3.036336e+01 ];

%-- Image #2:
omc_2 = [ -2.093492e+00 ; -1.776417e+00 ; 4.000899e-01 ];
Tc_2  = [ -8.894183e+02 ; -3.009658e+02 ; 1.430955e+03 ];
omc_error_2 = [ 2.159181e-02 ; 1.460107e-02 ; 3.296380e-02 ];
Tc_error_2  = [ 3.384772e+01 ; 3.221850e+01 ; 3.050783e+01 ];

%-- Image #3:
omc_3 = [ 1.705467e+00 ; 2.101661e+00 ; 5.305554e-01 ];
Tc_3  = [ -6.004702e+02 ; -5.175596e+02 ; 8.831420e+02 ];
omc_error_3 = [ 1.750519e-02 ; 1.907636e-02 ; 2.817366e-02 ];
Tc_error_3  = [ 2.337455e+01 ; 2.112898e+01 ; 2.446366e+01 ];

%-- Image #4:
omc_4 = [ 1.707794e+00 ; 1.771612e+00 ; -6.835586e-01 ];
Tc_4  = [ -8.077606e+02 ; -2.282696e+02 ; 1.693784e+03 ];
omc_error_4 = [ 1.353469e-02 ; 2.255563e-02 ; 3.081492e-02 ];
Tc_error_4  = [ 3.976869e+01 ; 3.774261e+01 ; 3.100795e+01 ];

%-- Image #5:
omc_5 = [ 1.835444e+00 ; 1.905923e+00 ; -1.133105e+00 ];
Tc_5  = [ -6.961901e+02 ; -1.574615e+02 ; 1.897409e+03 ];
omc_error_5 = [ 1.275574e-02 ; 2.472216e-02 ; 3.259101e-02 ];
Tc_error_5  = [ 4.448519e+01 ; 4.160322e+01 ; 2.917073e+01 ];

%-- Image #6:
omc_6 = [ 1.499122e+00 ; 1.482568e+00 ; -1.837079e-01 ];
Tc_6  = [ -8.353989e+02 ; -2.856623e+02 ; 1.432284e+03 ];
omc_error_6 = [ 1.615245e-02 ; 2.109451e-02 ; 2.594381e-02 ];
Tc_error_6  = [ 3.398435e+01 ; 3.238972e+01 ; 3.123865e+01 ];

%-- Image #7:
omc_7 = [ 1.752875e+00 ; 1.809586e+00 ; -7.329941e-01 ];
Tc_7  = [ -8.979934e+02 ; 2.756956e+02 ; 3.060956e+03 ];
omc_error_7 = [ 2.248062e-02 ; 2.844874e-02 ; 4.405860e-02 ];
Tc_error_7  = [ 7.233389e+01 ; 6.731783e+01 ; 5.186072e+01 ];

%-- Image #8:
omc_8 = [ 1.890721e+00 ; 1.969425e+00 ; -1.336586e+00 ];
Tc_8  = [ -7.513945e+02 ; 3.128892e+02 ; 3.233518e+03 ];
omc_error_8 = [ 1.873813e-02 ; 2.913867e-02 ; 3.834115e-02 ];
Tc_error_8  = [ 7.631398e+01 ; 7.022624e+01 ; 5.192837e+01 ];

%-- Image #9:
omc_9 = [ 1.575368e+00 ; 1.589721e+00 ; -1.831662e-01 ];
Tc_9  = [ -8.828384e+02 ; 9.068056e+01 ; 2.616272e+03 ];
omc_error_9 = [ 2.121185e-02 ; 2.440275e-02 ; 3.622777e-02 ];
Tc_error_9  = [ 6.184271e+01 ; 5.782974e+01 ; 5.161543e+01 ];

%-- Image #10:
omc_10 = [ -2.107000e+00 ; -2.076535e+00 ; -1.502587e-02 ];
Tc_10  = [ -8.262200e+02 ; 2.627250e+00 ; 2.248614e+03 ];
omc_error_10 = [ 2.571003e-02 ; 2.822660e-02 ; 4.982546e-02 ];
Tc_error_10  = [ 5.303675e+01 ; 4.944930e+01 ; 4.530204e+01 ];

%-- Image #11:
omc_11 = [ 1.885421e+00 ; 2.182451e+00 ; 3.381071e-01 ];
Tc_11  = [ -6.370817e+02 ; -1.301514e+02 ; 2.020652e+03 ];
omc_error_11 = [ 3.053035e-02 ; 2.999699e-02 ; 5.549965e-02 ];
Tc_error_11  = [ 4.835423e+01 ; 4.439850e+01 ; 4.745805e+01 ];

%-- Image #12:
omc_12 = [ -2.070480e+00 ; -1.759288e+00 ; 3.573037e-01 ];
Tc_12  = [ -8.616093e+02 ; 1.741222e+02 ; 2.791334e+03 ];
omc_error_12 = [ 2.452228e-02 ; 2.299648e-02 ; 3.996976e-02 ];
Tc_error_12  = [ 6.560495e+01 ; 6.099871e+01 ; 5.028209e+01 ];

%-- Image #13:
omc_13 = [ 1.989255e+00 ; 1.854732e+00 ; -8.758685e-01 ];
Tc_13  = [ -7.309470e+02 ; -1.266669e+02 ; 1.742478e+03 ];
omc_error_13 = [ 1.356052e-02 ; 2.246444e-02 ; 3.353675e-02 ];
Tc_error_13  = [ 4.065097e+01 ; 3.827582e+01 ; 2.917868e+01 ];

%-- Image #14:
omc_14 = [ 1.764833e+00 ; 1.813489e+00 ; -1.364178e+00 ];
Tc_14  = [ -6.067942e+02 ; 8.419546e+01 ; 1.960976e+03 ];
omc_error_14 = [ 1.337912e-02 ; 2.514151e-02 ; 3.081343e-02 ];
Tc_error_14  = [ 4.580287e+01 ; 4.260925e+01 ; 2.712356e+01 ];

%-- Image #15:
omc_15 = [ 1.605067e+00 ; 1.661455e+00 ; -4.598697e-01 ];
Tc_15  = [ -4.525037e+02 ; -4.927726e+01 ; 1.743879e+03 ];
omc_error_15 = [ 1.775372e-02 ; 1.990075e-02 ; 3.006250e-02 ];
Tc_error_15  = [ 4.068185e+01 ; 3.742016e+01 ; 2.901962e+01 ];

%-- Image #16:
omc_16 = [ 2.078926e+00 ; 1.869329e+00 ; -6.924097e-01 ];
Tc_16  = [ -4.941785e+02 ; 1.326995e+02 ; 3.157804e+03 ];
omc_error_16 = [ 3.148380e-02 ; 3.005094e-02 ; 5.829027e-02 ];
Tc_error_16  = [ 7.444747e+01 ; 6.798922e+01 ; 5.182050e+01 ];

%-- Image #17:
omc_17 = [ -2.397280e+00 ; -1.672564e+00 ; 3.321782e-01 ];
Tc_17  = [ -7.838366e+02 ; -1.336330e+03 ; 3.150752e+03 ];
omc_error_17 = [ 4.373033e-02 ; 1.973222e-02 ; 6.384046e-02 ];
Tc_error_17  = [ 7.972575e+01 ; 7.070002e+01 ; 6.506542e+01 ];

%-- Image #18:
omc_18 = [ 2.737004e+00 ; 5.099592e-01 ; 9.055561e-01 ];
Tc_18  = [ -2.543891e+03 ; -1.326977e+03 ; 4.111814e+03 ];
omc_error_18 = [ 6.261899e-02 ; 4.128709e-02 ; 9.752403e-02 ];
Tc_error_18  = [ 1.207265e+02 ; 1.023236e+02 ; 1.708978e+02 ];

%-- Image #19:
omc_19 = [ 1.989921e+00 ; 2.209658e+00 ; 7.424836e-02 ];
Tc_19  = [ -1.937041e+03 ; 1.348355e+02 ; 2.695645e+03 ];
omc_error_19 = [ 3.863602e-02 ; 4.869839e-02 ; 7.730538e-02 ];
Tc_error_19  = [ 6.782843e+01 ; 6.501932e+01 ; 7.204698e+01 ];

%-- Image #20:
omc_20 = [ -2.409262e+00 ; -1.843708e+00 ; 1.875139e-01 ];
Tc_20  = [ -1.947773e+02 ; -4.405573e+02 ; 3.586730e+03 ];
omc_error_20 = [ 8.481414e-02 ; 7.148739e-02 ; 1.765159e-01 ];
Tc_error_20  = [ 8.576656e+01 ; 7.632582e+01 ; 8.595242e+01 ];

