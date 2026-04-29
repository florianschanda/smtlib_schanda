(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.812864905852995978108310737297870218753814697265625p-643 {+ 3660818087102106 -643 (4.96682e-194)}
; Y = 1.6019198172515427547324406987172551453113555908203125p-973 {+ 2710805864680965 -973 (2.00657e-293)}
; 1.812864905852995978108310737297870218753814697265625p-643 > 1.6019198172515427547324406987172551453113555908203125p-973 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111100 #b1101000000010111111010100001101010110100011010011010)))
(assert (= y (fp #b0 #b00000110010 #b1001101000010111011010101100100111101000111000000101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
