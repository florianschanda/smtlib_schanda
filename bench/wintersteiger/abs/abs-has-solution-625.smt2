(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.99849020948824485088834990165196359157562255859375p-142 {+ 4496800135384348 -142 (3.58462e-043)}
; 1.99849020948824485088834990165196359157562255859375p-142 | == 1.99849020948824485088834990165196359157562255859375p-142
; [HW: 1.99849020948824485088834990165196359157562255859375p-142] 

; mpf : + 4496800135384348 -142
; mpfd: + 4496800135384348 -142 (3.58462e-043) class: Pos. norm. non-zero
; hwf : + 4496800135384348 -142 (3.58462e-043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110001 #b1111111110011101000011011110101100100000110100011100)))
(assert (= r (fp #b0 #b01101110001 #b1111111110011101000011011110101100100000110100011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
