(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.601125823441749584929993943660520017147064208984375p-908 {+ 2707230034455046 -908 (7.39928e-274)}
; 1.601125823441749584929993943660520017147064208984375p-908 | == 1.601125823441749584929993943660520017147064208984375p-908
; [HW: 1.601125823441749584929993943660520017147064208984375p-908] 

; mpf : + 2707230034455046 -908
; mpfd: + 2707230034455046 -908 (7.39928e-274) class: Pos. norm. non-zero
; hwf : + 2707230034455046 -908 (7.39928e-274) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110011 #b1001100111100011011000011100100001110110101000000110)))
(assert (= r (fp #b0 #b00001110011 #b1001100111100011011000011100100001110110101000000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
