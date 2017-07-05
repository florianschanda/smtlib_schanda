(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.57753061613178946487323628389276564121246337890625p-580 {- 2600966667606180 -580 (-3.98639e-175)}
; Y = -1.4829085468230989164339916897006332874298095703125p-496 {- 2174826751526536 -496 (-7.24831e-150)}
; -1.57753061613178946487323628389276564121246337890625p-580 - -1.4829085468230989164339916897006332874298095703125p-496 == 1.4829085468230986943893867646693252027034759521484375p-496
; [HW: 1.4829085468230986943893867646693252027034759521484375p-496] 

; mpf : + 2174826751526535 -496
; mpfd: + 2174826751526535 -496 (7.24831e-150) class: Pos. norm. non-zero
; hwf : + 2174826751526535 -496 (7.24831e-150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111011 #b1001001111011001000010111110010010111001100010100100)))
(assert (= y (fp #b1 #b01000001111 #b0111101110011111111001001111111110010000011010001000)))
(assert (= r (fp #b0 #b01000001111 #b0111101110011111111001001111111110010000011010000111)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
