(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4310307903243695282213820973993279039859771728515625p-915 {+ 1941190106690041 -915 (5.16658e-276)}
; Y = -1.783225844612727595261958413175307214260101318359375p838 {- 3527335621944822 838 (-3.26846e+252)}
; 1.4310307903243695282213820973993279039859771728515625p-915 = -1.783225844612727595261958413175307214260101318359375p838 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101100 #b0110111001011000000010001010110000000011000111111001)))
(assert (= y (fp #b1 #b11101000101 #b1100100010000001011111010010101111111110010111110110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
