(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5122544443398135971534657073789276182651519775390625p601 {+ 2306988924647665 601 (1.25502e+181)}
; Y = -1.3478278776985173070812606965773738920688629150390625p-630 {- 1566477500392113 -630 (-3.02508e-190)}
; 1.5122544443398135971534657073789276182651519775390625p601 = -1.3478278776985173070812606965773738920688629150390625p-630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011000 #b1000001100100011000110110111010110101011100011110001)))
(assert (= y (fp #b1 #b00110001001 #b0101100100001011001111110110111101011010001010110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
