(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.031548284069295551290679213707335293292999267578125p-115 {+ 142080840378658 -115 (2.48336e-035)}
; 1.031548284069295551290679213707335293292999267578125p-115 | == 1.031548284069295551290679213707335293292999267578125p-115
; [HW: 1.031548284069295551290679213707335293292999267578125p-115] 

; mpf : + 142080840378658 -115
; mpfd: + 142080840378658 -115 (2.48336e-035) class: Pos. norm. non-zero
; hwf : + 142080840378658 -115 (2.48336e-035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001100 #b0000100000010011100011000110000001010010100100100010)))
(assert (= r (fp #b0 #b01110001100 #b0000100000010011100011000110000001010010100100100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
