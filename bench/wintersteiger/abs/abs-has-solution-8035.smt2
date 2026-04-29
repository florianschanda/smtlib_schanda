(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.926495742080627682213389562093652784824371337890625p-447 {+ 4172565878794666 -447 (5.30103e-135)}
; 1.926495742080627682213389562093652784824371337890625p-447 | == 1.926495742080627682213389562093652784824371337890625p-447
; [HW: 1.926495742080627682213389562093652784824371337890625p-447] 

; mpf : + 4172565878794666 -447
; mpfd: + 4172565878794666 -447 (5.30103e-135) class: Pos. norm. non-zero
; hwf : + 4172565878794666 -447 (5.30103e-135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000000 #b1110110100101110110100110011000000011110100110101010)))
(assert (= r (fp #b0 #b01001000000 #b1110110100101110110100110011000000011110100110101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
