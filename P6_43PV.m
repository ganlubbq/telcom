% File: P6_43PV.m
% Evaluates the given PSD, Pv(f), for Problem 6-43
% NOTE: This file uses the function defined by File P6_43W.m


function y = P6_43PV(f);
y = P6_43W(f) + P6_43W(-f);

