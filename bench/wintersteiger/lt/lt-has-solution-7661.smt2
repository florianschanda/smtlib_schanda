(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.21183876607994189811279284185729920864105224609375p598 {- 954036987980252 598 (-1.25714e+180)}
; Y = -1.467428919791869734723377405316568911075592041015625p-792 {- 2105112708996858 -792 (-5.63379e-239)}
; -1.21183876607994189811279284185729920864105224609375p598 < -1.467428919791869734723377405316568911075592041015625p-792 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010101 #b0011011000111011000100001011110001010110100111011100)))
(assert (= y (fp #b1 #b00011100111 #b0111011110101001011010111111001110110101111011111010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
