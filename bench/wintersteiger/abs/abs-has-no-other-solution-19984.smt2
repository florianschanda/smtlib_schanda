(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.127981117408754840880646952427923679351806640625p-978 {- 576375712672528 -978 (-4.41536e-295)}
; -1.127981117408754840880646952427923679351806640625p-978 | == 1.127981117408754840880646952427923679351806640625p-978
; [HW: 1.127981117408754840880646952427923679351806640625p-978] 

; mpf : + 576375712672528 -978
; mpfd: + 576375712672528 -978 (4.41536e-295) class: Pos. norm. non-zero
; hwf : + 576375712672528 -978 (4.41536e-295) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101101 #b0010000011000011010111101101100111000110101100010000)))
(assert (= r (fp #b0 #b00000101101 #b0010000011000011010111101101100111000110101100010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
