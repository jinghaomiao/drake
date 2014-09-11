function [a0, a1, a2, a3] = cubicSplineCoefficients(t0, tf, q0, qf, qdot0, qdotf)
% cubicSplineCoefficients: compute the coefficients for a cubic polynomial spline
% See Craig, J. Introduction to Robotics: Mechanics and Control, 2005, p207, eq 7.11

tf = tf - t0;
a0 = q0;
a1 = qdot0;
a2 = (3 / tf^2) * (qf - q0) - (2 / tf) * qdot0 - (1 / tf) * qdotf;
a3 = (-2 / tf^3) * (qf - q0) + (1 / tf^2) * (qdotf + qdot0);
end