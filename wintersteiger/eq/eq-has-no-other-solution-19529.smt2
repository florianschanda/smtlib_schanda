(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1714040035449866383743255937588401138782501220703125p-697 {+ 771935006495013 -697 (1.78156e-210)}
; +oo = 1.1714040035449866383743255937588401138782501220703125p-697 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00101000110 #b0010101111100001001000011111110110100001000100100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
