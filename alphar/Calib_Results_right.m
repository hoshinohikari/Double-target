% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 406.835680365100814 ; 413.815772653211297 ];

%-- Principal point:
cc = [ 288.685354519609746 ; 253.654125094418589 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.333158346783066 ; 0.087279429678324 ; 0.007404545021082 ; 0.011415844749463 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 8.080803746815173 ; 7.819913667462981 ];

%-- Principal point uncertainty:
cc_error = [ 11.626622478822508 ; 10.370668208401844 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.032127321030944 ; 0.029375558715794 ; 0.004324797180332 ; 0.005120000092692 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 12;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.174122e+00 ; -2.213275e+00 ; -8.119764e-02 ];
Tc_1  = [ -8.033492e+01 ; -3.619643e+01 ; 1.025625e+02 ];
omc_error_1 = [ 2.174038e-02 ; 1.988604e-02 ; 4.316565e-02 ];
Tc_error_1  = [ 3.009608e+00 ; 2.813728e+00 ; 3.465808e+00 ];

%-- Image #2:
omc_2 = [ -2.120121e+00 ; -1.776151e+00 ; 4.267564e-01 ];
Tc_2  = [ -8.285269e+01 ; -2.404735e+01 ; 1.418360e+02 ];
omc_error_2 = [ 2.519137e-02 ; 1.770136e-02 ; 3.890720e-02 ];
Tc_error_2  = [ 4.012310e+00 ; 3.701534e+00 ; 3.575194e+00 ];

%-- Image #3:
omc_3 = [ 1.725253e+00 ; 2.157264e+00 ; 4.405347e-01 ];
Tc_3  = [ -5.619682e+01 ; -4.779542e+01 ; 8.630937e+01 ];
omc_error_3 = [ 2.001494e-02 ; 2.190582e-02 ; 3.203337e-02 ];
Tc_error_3  = [ 2.736144e+00 ; 2.407198e+00 ; 2.776858e+00 ];

%-- Image #4:
omc_4 = [ 1.671667e+00 ; 1.748610e+00 ; -7.904730e-01 ];
Tc_4  = [ -7.383120e+01 ; -1.470995e+01 ; 1.681401e+02 ];
omc_error_4 = [ 1.633869e-02 ; 2.673136e-02 ; 3.698611e-02 ];
Tc_error_4  = [ 4.750118e+00 ; 4.411628e+00 ; 3.595329e+00 ];

%-- Image #5:
omc_5 = [ 1.758301e+00 ; 1.872925e+00 ; -1.257410e+00 ];
Tc_5  = [ -5.686962e+01 ; -7.881661e+00 ; 1.850062e+02 ];
omc_error_5 = [ 1.639081e-02 ; 2.935730e-02 ; 3.855874e-02 ];
Tc_error_5  = [ 5.234926e+00 ; 4.748189e+00 ; 3.226748e+00 ];

%-- Image #6:
omc_6 = [ 1.479489e+00 ; 1.494136e+00 ; -2.867661e-01 ];
Tc_6  = [ -7.622463e+01 ; -2.182766e+01 ; 1.409233e+02 ];
omc_error_6 = [ 1.867361e-02 ; 2.489657e-02 ; 3.144568e-02 ];
Tc_error_6  = [ 4.000606e+00 ; 3.740585e+00 ; 3.594238e+00 ];

%-- Image #7:
omc_7 = [ 1.705866e+00 ; 1.778140e+00 ; -8.561494e-01 ];
Tc_7  = [ -7.220190e+01 ; 4.014769e+01 ; 2.964325e+02 ];
omc_error_7 = [ 2.615987e-02 ; 3.246288e-02 ; 4.998331e-02 ];
Tc_error_7  = [ 8.481733e+00 ; 7.645116e+00 ; 6.118326e+00 ];

%-- Image #8:
omc_8 = [ 1.838147e+00 ; 1.920291e+00 ; -1.436950e+00 ];
Tc_8  = [ -5.696568e+01 ; 4.462610e+01 ; 3.144407e+02 ];
omc_error_8 = [ 2.312467e-02 ; 3.416088e-02 ; 4.494126e-02 ];
Tc_error_8  = [ 8.994865e+00 ; 8.004479e+00 ; 6.148214e+00 ];

%-- Image #9:
omc_9 = [ 1.557670e+00 ; 1.602874e+00 ; -3.066819e-01 ];
Tc_9  = [ -7.395801e+01 ; 2.028567e+01 ; 2.564836e+02 ];
omc_error_9 = [ 2.465688e-02 ; 2.859320e-02 ; 4.346051e-02 ];
Tc_error_9  = [ 7.304932e+00 ; 6.685680e+00 ; 6.138137e+00 ];

%-- Image #10:
omc_10 = [ -2.119346e+00 ; -2.075198e+00 ; -4.658463e-03 ];
Tc_10  = [ -6.983319e+01 ; 9.060560e+00 ; 2.164010e+02 ];
omc_error_10 = [ 2.871658e-02 ; 3.473177e-02 ; 5.753020e-02 ];
Tc_error_10  = [ 6.169350e+00 ; 5.561772e+00 ; 5.408474e+00 ];

%-- Image #11:
omc_11 = [ 1.930875e+00 ; 2.235767e+00 ; 2.845819e-01 ];
Tc_11  = [ -5.207974e+01 ; -4.835653e+00 ; 1.948555e+02 ];
omc_error_11 = [ 3.586745e-02 ; 3.213459e-02 ; 6.375035e-02 ];
Tc_error_11  = [ 5.604850e+00 ; 5.025445e+00 ; 5.470724e+00 ];

%-- Image #12:
omc_12 = [ -2.094364e+00 ; -1.742713e+00 ; 4.075621e-01 ];
Tc_12  = [ -7.120658e+01 ; 2.911114e+01 ; 2.727943e+02 ];
omc_error_12 = [ 2.867654e-02 ; 2.838913e-02 ; 4.755390e-02 ];
Tc_error_12  = [ 7.749649e+00 ; 6.987709e+00 ; 6.100631e+00 ];

