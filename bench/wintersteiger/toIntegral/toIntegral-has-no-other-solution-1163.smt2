(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.054879304882593071823748687165789306163787841796875 692 {+ 247154417019598 692 (2.1675e+208)}
; 1.054879304882593071823748687165789306163787841796875 692 I == 1.054879304882593071823748687165789306163787841796875 692
; [HW: 1.054879304882593071823748687165789306163787841796875 692] 

; mpf : + 247154417019598 692
; mpfd: + 247154417019598 692 (2.1675e+208) class: Pos. norm. non-zero
; hwf : + 247154417019598 692 (2.1675e+208) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010110011 #b0000111000001100100100011111001110110010101011001110)))
(assert (= r (fp #b0 #b11010110011 #b0000111000001100100100011111001110110010101011001110)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
