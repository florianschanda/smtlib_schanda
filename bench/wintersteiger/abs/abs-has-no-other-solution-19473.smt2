(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.552821561364071900612771059968508780002593994140625p-497 {- 2489686977761610 -497 (-3.79502e-150)}
; -1.552821561364071900612771059968508780002593994140625p-497 | == 1.552821561364071900612771059968508780002593994140625p-497
; [HW: 1.552821561364071900612771059968508780002593994140625p-497] 

; mpf : + 2489686977761610 -497
; mpfd: + 2489686977761610 -497 (3.79502e-150) class: Pos. norm. non-zero
; hwf : + 2489686977761610 -497 (3.79502e-150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000001110 #b1000110110000101101101101011111010010101000101001010)))
(assert (= r (fp #b0 #b01000001110 #b1000110110000101101101101011111010010101000101001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
