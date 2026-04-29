(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0636813444390627036995056187151931226253509521484375 660 {- 286795279086215 660 (-5.08872e+198)}
; -1.0636813444390627036995056187151931226253509521484375 660 I == -1.0636813444390627036995056187151931226253509521484375 660
; [HW: -1.0636813444390627036995056187151931226253509521484375 660] 

; mpf : - 286795279086215 660
; mpfd: - 286795279086215 660 (-5.08872e+198) class: Neg. norm. non-zero
; hwf : - 286795279086215 660 (-5.08872e+198) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010011 #b0001000001001101011010111010101110111011001010000111)))
(assert (= r (fp #b1 #b11010010011 #b0001000001001101011010111010101110111011001010000111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
