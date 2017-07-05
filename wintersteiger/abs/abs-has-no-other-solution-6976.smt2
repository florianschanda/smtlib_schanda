(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.72923611776823893393384423688985407352447509765625p9 {- 3284187508246148 9 (-885.369)}
; -1.72923611776823893393384423688985407352447509765625p9 | == 1.72923611776823893393384423688985407352447509765625p9
; [HW: 1.72923611776823893393384423688985407352447509765625p9] 

; mpf : + 3284187508246148 9
; mpfd: + 3284187508246148 9 (885.369) class: Pos. norm. non-zero
; hwf : + 3284187508246148 9 (885.369) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001000 #b1011101010101111001101111101110011100000011010000100)))
(assert (= r (fp #b0 #b10000001000 #b1011101010101111001101111101110011100000011010000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
