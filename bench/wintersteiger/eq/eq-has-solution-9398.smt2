(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9946847448069366937062341094133444130420684814453125p906 {- 4479661846063637 906 (-1.07907e+273)}
; Y = -1.0290221495402425144760627517825923860073089599609375p987 {- 130704141854927 987 (-1.34595e+297)}
; -1.9946847448069366937062341094133444130420684814453125p906 = -1.0290221495402425144760627517825923860073089599609375p987 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110001001 #b1111111010100011101010001101000011000110101000010101)))
(assert (= y (fp #b1 #b11111011010 #b0000011101101101111111101101111100100010100011001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
