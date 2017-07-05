(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6876986988678439605138237311621196568012237548828125p373 {+ 3097119603964397 373 (3.24701e+112)}
; Y = -1.6802702742792587908837731447420082986354827880859375p691 {- 3063664953755295 691 (-1.72626e+208)}
; 1.6876986988678439605138237311621196568012237548828125p373 > -1.6802702742792587908837731447420082986354827880859375p691 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110100 #b1011000000001101000001011001110100100011100111101101)))
(assert (= y (fp #b1 #b11010110010 #b1010111000100110001100010101010001111000011010011111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
