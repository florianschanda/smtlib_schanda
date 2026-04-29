(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6310600927682836758236817331635393202304840087890625p434 {- 2842041998639633 434 (-7.23583e+130)}
; -1.6310600927682836758236817331635393202304840087890625p434 | == 1.6310600927682836758236817331635393202304840087890625p434
; [HW: 1.6310600927682836758236817331635393202304840087890625p434] 

; mpf : + 2842041998639633 434
; mpfd: + 2842041998639633 434 (7.23583e+130) class: Pos. norm. non-zero
; hwf : + 2842041998639633 434 (7.23583e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110001 #b1010000110001101001001110111110001000000001000010001)))
(assert (= r (fp #b0 #b10110110001 #b1010000110001101001001110111110001000000001000010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
