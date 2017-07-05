(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6949243122076158574174087334540672600269317626953125p-216 {+ 3129660873508917 -216 (1.60943e-065)}
; Y = 1.672012090689583896363501480664126574993133544921875p516 {+ 3026473401218078 516 (3.58688e+155)}
; 1.6949243122076158574174087334540672600269317626953125p-216 > 1.672012090689583896363501480664126574993133544921875p516 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100111 #b1011000111100110100011110100101000100000100000110101)))
(assert (= y (fp #b0 #b11000000011 #b1010110000001000111111000000000000000111010000011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
