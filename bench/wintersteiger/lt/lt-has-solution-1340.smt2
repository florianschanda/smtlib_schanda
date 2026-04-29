(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.092942551047795252117111886036582291126251220703125p538 {+ 418576038265714 538 (9.83411e+161)}
; Y = 1.881633897067640948108646625769324600696563720703125p-582 {+ 3970526090311026 -582 (1.18871e-175)}
; 1.092942551047795252117111886036582291126251220703125p538 < 1.881633897067640948108646625769324600696563720703125p-582 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011001 #b0001011111001011000101010100000100101000001101110010)))
(assert (= y (fp #b0 #b00110111001 #b1110000110110010110000100101001011110011010101110010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
