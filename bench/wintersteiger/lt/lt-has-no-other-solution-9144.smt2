(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.740509918797325639161499566398561000823974609375p-889 {- 3334960194359792 -889 (-4.21707e-268)}
; Y = 1.6998151870204563085309246162069030106067657470703125p-441 {+ 3151687415493541 -441 (2.99346e-133)}
; -1.740509918797325639161499566398561000823974609375p-889 < 1.6998151870204563085309246162069030106067657470703125p-441 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000110 #b1011110110010010000011101101101110011001000111110000)))
(assert (= y (fp #b0 #b01001000110 #b1011001100100111000101101000110101111111001110100101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
