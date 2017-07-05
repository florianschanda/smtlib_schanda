(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2881645152733336434636157719069160521030426025390625p-120 {+ 1297777603606385 -120 (9.69107e-037)}
; 1.2881645152733336434636157719069160521030426025390625p-120 | == 1.2881645152733336434636157719069160521030426025390625p-120
; [HW: 1.2881645152733336434636157719069160521030426025390625p-120] 

; mpf : + 1297777603606385 -120
; mpfd: + 1297777603606385 -120 (9.69107e-037) class: Pos. norm. non-zero
; hwf : + 1297777603606385 -120 (9.69107e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110000111 #b0100100111000101001001100101000011110111011101110001)))
(assert (= r (fp #b0 #b01110000111 #b0100100111000101001001100101000011110111011101110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
