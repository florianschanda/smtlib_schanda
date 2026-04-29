(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4010026507934851824899169514537788927555084228515625p-715 {- 1805955388688121 -715 (-8.12816e-216)}
; -1.4010026507934851824899169514537788927555084228515625p-715 | == 1.4010026507934851824899169514537788927555084228515625p-715
; [HW: 1.4010026507934851824899169514537788927555084228515625p-715] 

; mpf : + 1805955388688121 -715
; mpfd: + 1805955388688121 -715 (8.12816e-216) class: Pos. norm. non-zero
; hwf : + 1805955388688121 -715 (8.12816e-216) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100110100 #b0110011010101000000111000001011011000100011011111001)))
(assert (= r (fp #b0 #b00100110100 #b0110011010101000000111000001011011000100011011111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
