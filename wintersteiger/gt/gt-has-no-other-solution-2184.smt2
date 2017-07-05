(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.694161689918236124441364154336042702198028564453125p144 {- 3126226328050642 144 (-3.77811e+043)}
; Y = -1.5349852842355833359988537267781794071197509765625p933 {- 2409359526732072 933 (-1.11453e+281)}
; -1.694161689918236124441364154336042702198028564453125p144 > -1.5349852842355833359988537267781794071197509765625p933 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001111 #b1011000110110100100101001001110001010101101111010010)))
(assert (= y (fp #b1 #b11110100100 #b1000100011110100110010111010101110100010000100101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
