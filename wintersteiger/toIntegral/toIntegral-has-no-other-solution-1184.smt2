(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3036042959950442376992896242882125079631805419921875 666 {- 1367312194311363 666 (-3.99138e+200)}
; -1.3036042959950442376992896242882125079631805419921875 666 I == -1.3036042959950442376992896242882125079631805419921875 666
; [HW: -1.3036042959950442376992896242882125079631805419921875 666] 

; mpf : - 1367312194311363 666
; mpfd: - 1367312194311363 666 (-3.99138e+200) class: Neg. norm. non-zero
; hwf : - 1367312194311363 666 (-3.99138e+200) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011001 #b0100110110111001000000101101101000111001010011000011)))
(assert (= r (fp #b1 #b11010011001 #b0100110110111001000000101101101000111001010011000011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
