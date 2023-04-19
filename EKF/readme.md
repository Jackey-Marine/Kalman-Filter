# EKF-Version 2.0

I rewrote the code to use function handle as input parameter instead of symbolic expression as in the previous Version 1.0 edition.

The old one is in the file:

* *Extended_KF_v1.m*

This toolkit aims at giving an implementation of the Extended Kalman Filter, as in the file:

* *Extended_KF.m*

## Example

An example of using the EKF function is given in the file:

* *GPS_EKF.m*

which applies Extended_KF to the GPS positioning task. It reads the pseudorange and the satellite position information provided in the list. we use the EKF as well as the traditional Least Square(LS) method to compute the position of the receiver.

* *SV_Rho.mat*
* *SV_Pos.mat*

 Other .m files are as described below, which contain auxiliary functions for the LS and EKF methods, respectively.

* *Rcv_Pos_Compute.m*
* *G_Compute.m*
* *Delta_Rho_Compute.m*
* *PseudorangeEquation.m*
* *ConstantVelocity.m*

## Reference

References for the general Kalman Filtering and KF with application to target tracking:

1. Y. Bar-Shalom, X. R. Li and T. Kirubarajan, Estimation with Applications to Tracking and Navigation, Wiley Interscience, 2001.
2. R. G. Brown and P. Y. C. Gwang, Introduction to Random Signals and Applied Kalman Filtering, 3rd ed. New York: Wiley, 1997.
3. <http://www.cs.unc.edu/~welch/kalman>
4. <https://en.wikipedia.org/wiki/Extended_Kalman_filter>

## Chinese Readme

重写了代码，使用函数句柄作为输入参数，而不是像前一版那样使用符号表达式。

旧的代码在文件:

* *Extended_KF_v1.m*

这个工具包的目的是提供扩展卡尔曼滤波器(EKF)的实现，如文件所示。

* *Extended_KF.m*

文件中给出了一个使用EKF功能的例子。

* *GPS_EKF.m*

该文件将Extended_KF应用于GPS定位任务。它读取伪距和卫星位置信息，这些信息在下列.mat文件中提供，包含伪距和卫星位置信息。我使用EKF以及传统的最小平方(LS)方法来计算接收器的位置。

* *SV_Rho.mat*
* *SV_Pos.mat*

其他的.m文件有下列内容，其中分别包含了LS和EKF方法的辅助函数。

* *Rcv_Pos_Compute.m*
* *G_Compute.m*
* *Delta_Rho_Compute.m*
* *PseudorangeEquation.m*
* *ConstantVelocity.m*
