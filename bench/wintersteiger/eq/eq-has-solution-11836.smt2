(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4388574358910819483980958466418087482452392578125p-889 {+ 1976438184747848 -889 (3.48619e-268)}
; Y = 1.678219738782794845377566161914728581905364990234375p-959 {+ 3054430162857510 -959 (3.44416e-289)}
; 1.4388574358910819483980958466418087482452392578125p-889 = 1.678219738782794845377566161914728581905364990234375p-959 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000110 #b0111000001011000111101011111111011000010001101001000)))
(assert (= y (fp #b0 #b00001000000 #b1010110110011111110011110000110110010010111000100110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
