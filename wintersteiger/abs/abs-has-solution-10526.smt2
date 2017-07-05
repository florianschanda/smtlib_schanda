(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2773101358134921756715129959047771990299224853515625p-871 {- 1248893824315705 -871 (-8.11279e-263)}
; -1.2773101358134921756715129959047771990299224853515625p-871 | == 1.2773101358134921756715129959047771990299224853515625p-871
; [HW: 1.2773101358134921756715129959047771990299224853515625p-871] 

; mpf : + 1248893824315705 -871
; mpfd: + 1248893824315705 -871 (8.11279e-263) class: Pos. norm. non-zero
; hwf : + 1248893824315705 -871 (8.11279e-263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011000 #b0100011011111101110011000000110000101011000100111001)))
(assert (= r (fp #b0 #b00010011000 #b0100011011111101110011000000110000101011000100111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
