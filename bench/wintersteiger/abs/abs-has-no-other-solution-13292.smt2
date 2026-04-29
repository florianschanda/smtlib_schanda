(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.727829185536380318666260791360400617122650146484375p-415 {- 3277851248771014 -415 (-2.04199e-125)}
; -1.727829185536380318666260791360400617122650146484375p-415 | == 1.727829185536380318666260791360400617122650146484375p-415
; [HW: 1.727829185536380318666260791360400617122650146484375p-415] 

; mpf : + 3277851248771014 -415
; mpfd: + 3277851248771014 -415 (2.04199e-125) class: Pos. norm. non-zero
; hwf : + 3277851248771014 -415 (2.04199e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100000 #b1011101001010011000000110111010011110011111111000110)))
(assert (= r (fp #b0 #b01001100000 #b1011101001010011000000110111010011110011111111000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
