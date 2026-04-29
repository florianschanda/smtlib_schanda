(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.842420434734956646849468597793020308017730712890625p-20 {- 3793924355961642 -20 (-1.75707e-006)}
; -1.842420434734956646849468597793020308017730712890625p-20 | == 1.842420434734956646849468597793020308017730712890625p-20
; [HW: 1.842420434734956646849468597793020308017730712890625p-20] 

; mpf : + 3793924355961642 -20
; mpfd: + 3793924355961642 -20 (1.75707e-006) class: Pos. norm. non-zero
; hwf : + 3793924355961642 -20 (1.75707e-006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111101011 #b1101011110101000110111011001100010101011001100101010)))
(assert (= r (fp #b0 #b01111101011 #b1101011110101000110111011001100010101011001100101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
