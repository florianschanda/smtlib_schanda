(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.224619992795091594217637975816614925861358642578125 492 {- 1011598515851938 492 (-1.56588e+148)}
; -1.224619992795091594217637975816614925861358642578125 492 I == -1.224619992795091594217637975816614925861358642578125 492
; [HW: -1.224619992795091594217637975816614925861358642578125 492] 

; mpf : - 1011598515851938 492
; mpfd: - 1011598515851938 492 (-1.56588e+148) class: Neg. norm. non-zero
; hwf : - 1011598515851938 492 (-1.56588e+148) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111101011 #b0011100110000000101100100010001100010101001010100010)))
(assert (= r (fp #b1 #b10111101011 #b0011100110000000101100100010001100010101001010100010)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
