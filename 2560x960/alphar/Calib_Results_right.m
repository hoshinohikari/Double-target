% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 818.549837860706702 ; 833.024556563639976 ];

%-- Principal point:
cc = [ 642.471393721161576 ; 536.321694563363167 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.324224801743798 ; 0.085111387248225 ; -0.002103528833228 ; 0.005787442856196 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 59.824005163698885 ; 59.598159777338978 ];

%-- Principal point uncertainty:
cc_error = [ 29.349126298038737 ; 35.264541682199592 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.039919935810851 ; 0.025266727932842 ; 0.005132795121411 ; 0.004813088700980 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 960;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 15;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -1.909270e+00 ; -2.312979e+00 ; 4.619437e-01 ];
Tc_1  = [ 2.517885e+03 ; -1.699840e+03 ; 5.805988e+03 ];
omc_error_1 = [ 4.398389e-02 ; 4.343484e-02 ; 8.538084e-02 ];
Tc_error_1  = [ 2.261107e+02 ; 2.562908e+02 ; 4.540853e+02 ];

%-- Image #2:
omc_2 = [ -1.715335e+00 ; -2.349315e+00 ; 8.254456e-01 ];
Tc_2  = [ 2.900613e+03 ; 7.859092e+02 ; 5.418706e+03 ];
omc_error_2 = [ 4.819270e-02 ; 7.490997e-02 ; 1.258379e-01 ];
Tc_error_2  = [ 2.180479e+02 ; 2.447071e+02 ; 4.344757e+02 ];

%-- Image #3:
omc_3 = [ -1.535589e+00 ; -2.270847e+00 ; 9.208093e-01 ];
Tc_3  = [ 2.721986e+03 ; 1.905651e+02 ; 5.387381e+03 ];
omc_error_3 = [ 3.583424e-02 ; 4.829987e-02 ; 7.963184e-02 ];
Tc_error_3  = [ 2.071828e+02 ; 2.406666e+02 ; 4.034894e+02 ];

%-- Image #4:
omc_4 = [ -2.314655e+00 ; -1.596614e+00 ; 1.999782e-01 ];
Tc_4  = [ -1.088202e+03 ; -1.327491e+03 ; 4.230177e+03 ];
omc_error_4 = [ 4.411469e-02 ; 1.873845e-02 ; 6.742303e-02 ];
Tc_error_4  = [ 1.521211e+02 ; 1.833793e+02 ; 2.981307e+02 ];

%-- Image #5:
omc_5 = [ -2.360134e+00 ; -1.685483e+00 ; 4.772922e-01 ];
Tc_5  = [ -6.509476e+02 ; 3.021075e+02 ; 4.095964e+03 ];
omc_error_5 = [ 3.521005e-02 ; 1.994535e-02 ; 6.076670e-02 ];
Tc_error_5  = [ 1.449397e+02 ; 1.749361e+02 ; 2.861118e+02 ];

%-- Image #6:
omc_6 = [ -2.254372e+00 ; -1.718890e+00 ; 3.635339e-01 ];
Tc_6  = [ -7.265529e+02 ; -6.538355e+02 ; 4.152702e+03 ];
omc_error_6 = [ 3.626480e-02 ; 1.873309e-02 ; 6.318819e-02 ];
Tc_error_6  = [ 1.469995e+02 ; 1.766559e+02 ; 2.921622e+02 ];

%-- Image #7:
omc_7 = [ -2.062129e+00 ; -2.091079e+00 ; 2.461019e-01 ];
Tc_7  = [ -1.947657e+03 ; -1.993910e+03 ; 3.779390e+03 ];
omc_error_7 = [ 4.212592e-02 ; 1.912552e-02 ; 8.469153e-02 ];
Tc_error_7  = [ 1.433317e+02 ; 1.759566e+02 ; 2.934338e+02 ];

%-- Image #8:
omc_8 = [ 2.290295e+00 ; 2.102334e+00 ; -3.482536e-01 ];
Tc_8  = [ -2.525092e+03 ; -6.993369e+02 ; 3.335807e+03 ];
omc_error_8 = [ 1.761900e-02 ; 4.466650e-02 ; 8.396532e-02 ];
Tc_error_8  = [ 1.238529e+02 ; 1.620000e+02 ; 2.610171e+02 ];

%-- Image #9:
omc_9 = [ 2.048111e+00 ; 2.053138e+00 ; -3.479554e-01 ];
Tc_9  = [ -2.039856e+03 ; -3.515770e+02 ; 3.193777e+03 ];
omc_error_9 = [ 1.985145e-02 ; 4.065706e-02 ; 7.324167e-02 ];
Tc_error_9  = [ 1.155982e+02 ; 1.496172e+02 ; 2.356885e+02 ];

%-- Image #10:
omc_10 = [ 2.190594e+00 ; 2.003973e+00 ; -5.735247e-01 ];
Tc_10  = [ -5.588334e+02 ; 4.648708e+02 ; 3.695231e+03 ];
omc_error_10 = [ 2.934804e-02 ; 3.307386e-02 ; 6.822331e-02 ];
Tc_error_10  = [ 1.313914e+02 ; 1.589492e+02 ; 2.527142e+02 ];

%-- Image #11:
omc_11 = [ -2.055581e+00 ; -2.113825e+00 ; 2.958407e-01 ];
Tc_11  = [ 8.573624e+01 ; -1.223965e+03 ; 5.666930e+03 ];
omc_error_11 = [ 4.294039e-02 ; 3.809055e-02 ; 8.576338e-02 ];
Tc_error_11  = [ 2.056767e+02 ; 2.400970e+02 ; 4.061613e+02 ];

%-- Image #12:
omc_12 = [ -1.969180e+00 ; -2.044914e+00 ; 1.073936e+00 ];
Tc_12  = [ 1.659748e+03 ; 1.120036e+03 ; 4.684039e+03 ];
omc_error_12 = [ 3.195512e-02 ; 4.718546e-02 ; 8.141955e-02 ];
Tc_error_12  = [ 1.777934e+02 ; 2.060438e+02 ; 3.356010e+02 ];

%-- Image #13:
omc_13 = [ -1.428378e+00 ; -2.131438e+00 ; 5.258479e-01 ];
Tc_13  = [ 2.896997e+03 ; -2.532955e+03 ; 5.071676e+03 ];
omc_error_13 = [ 5.424741e-02 ; 4.744586e-02 ; 8.331457e-02 ];
Tc_error_13  = [ 2.270625e+02 ; 2.342317e+02 ; 4.262497e+02 ];

%-- Image #14:
omc_14 = [ 1.730654e+00 ; 2.383944e+00 ; 1.238698e-01 ];
Tc_14  = [ -2.085183e+03 ; -2.395249e+03 ; 3.796410e+03 ];
omc_error_14 = [ 1.663894e-02 ; 4.623446e-02 ; 1.188561e-01 ];
Tc_error_14  = [ 1.497878e+02 ; 1.797414e+02 ; 3.073387e+02 ];

%-- Image #15:
omc_15 = [ 1.242260e+00 ; 2.189249e+00 ; -5.210251e-01 ];
Tc_15  = [ -2.632524e+03 ; 1.755287e+02 ; 3.690111e+03 ];
omc_error_15 = [ 1.487021e-02 ; 4.906843e-02 ; 7.748380e-02 ];
Tc_error_15  = [ 1.413365e+02 ; 1.765661e+02 ; 2.614447e+02 ];

