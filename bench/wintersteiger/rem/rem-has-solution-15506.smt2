(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.7506786737308228651954777888022363185882568359375p-510 {+ 3380756195289112 -510 (5.22286e-154)}
; -zero % 1.7506786737308228651954777888022363185882568359375p-510 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01000000001 #b1100000000101100011110100100000101111010100000011000)))
(assert (= r (_ -zero 11 53)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
