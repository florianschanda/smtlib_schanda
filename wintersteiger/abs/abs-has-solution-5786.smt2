(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2889495259452179443115937829134054481983184814453125p254 {- 1301312977375765 254 (-3.73125e+076)}
; -1.2889495259452179443115937829134054481983184814453125p254 | == 1.2889495259452179443115937829134054481983184814453125p254
; [HW: 1.2889495259452179443115937829134054481983184814453125p254] 

; mpf : + 1301312977375765 254
; mpfd: + 1301312977375765 254 (3.73125e+076) class: Pos. norm. non-zero
; hwf : + 1301312977375765 254 (3.73125e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111101 #b0100100111111000100110001001110000100001001000010101)))
(assert (= r (fp #b0 #b10011111101 #b0100100111111000100110001001110000100001001000010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
