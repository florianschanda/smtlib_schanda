(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.98289606031811427300226569059304893016815185546875 875 {- 4426570330992588 875 (-4.99512e+263)}
; -1.98289606031811427300226569059304893016815185546875 875 I == -1.98289606031811427300226569059304893016815185546875 875
; [HW: -1.98289606031811427300226569059304893016815185546875 875] 

; mpf : - 4426570330992588 875
; mpfd: - 4426570330992588 875 (-4.99512e+263) class: Neg. norm. non-zero
; hwf : - 4426570330992588 875 (-4.99512e+263) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101010 #b1111101110011111000100111000001001101110111111001100)))
(assert (= r (fp #b1 #b11101101010 #b1111101110011111000100111000001001101110111111001100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
