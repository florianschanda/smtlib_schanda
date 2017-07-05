(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5773816737474017912745694047771394252777099609375p-1 {- 2600295890739352 -1 (-0.788691)}
; -1.5773816737474017912745694047771394252777099609375p-1 | == 1.5773816737474017912745694047771394252777099609375p-1
; [HW: 1.5773816737474017912745694047771394252777099609375p-1] 

; mpf : + 2600295890739352 -1
; mpfd: + 2600295890739352 -1 (0.788691) class: Pos. norm. non-zero
; hwf : + 2600295890739352 -1 (0.788691) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111110 #b1001001111001111010010010000111000001110000010011000)))
(assert (= r (fp #b0 #b01111111110 #b1001001111001111010010010000111000001110000010011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
