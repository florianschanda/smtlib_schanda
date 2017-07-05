(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.862047072675404368879981120699085295200347900390625p942 {+ 3882314875276778 942 (6.92224e+283)}
; 1.862047072675404368879981120699085295200347900390625p942 | == 1.862047072675404368879981120699085295200347900390625p942
; [HW: 1.862047072675404368879981120699085295200347900390625p942] 

; mpf : + 3882314875276778 942
; mpfd: + 3882314875276778 942 (6.92224e+283) class: Pos. norm. non-zero
; hwf : + 3882314875276778 942 (6.92224e+283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101101 #b1101110010101111000111011111000011000000110111101010)))
(assert (= r (fp #b0 #b11110101101 #b1101110010101111000111011111000011000000110111101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
