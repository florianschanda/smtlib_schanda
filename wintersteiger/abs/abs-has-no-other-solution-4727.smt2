(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.0411956928278252032527007031603716313838958740234375p-1022 {+ 185528906868663 -1023 (9.16635e-310)}
; 0.0411956928278252032527007031603716313838958740234375p-1022 | == 0.0411956928278252032527007031603716313838958740234375p-1022
; [HW: 0.0411956928278252032527007031603716313838958740234375p-1022] 

; mpf : + 185528906868663 -1023
; mpfd: + 185528906868663 -1023 (9.16635e-310) class: Pos. denorm.
; hwf : + 185528906868663 -1023 (9.16635e-310) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000101010001011110011010000100101101110011110110111)))
(assert (= r (fp #b0 #b00000000000 #b0000101010001011110011010000100101101110011110110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
