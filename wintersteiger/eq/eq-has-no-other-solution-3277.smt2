(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.13979149698191495332366685033775866031646728515625p174 {- 629564933717316 174 (-2.72926e+052)}
; Y = 1.95047114698998758086645466391928493976593017578125p794 {+ 4280541503410516 794 (2.03215e+239)}
; -1.13979149698191495332366685033775866031646728515625p174 = 1.95047114698998758086645466391928493976593017578125p794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101101 #b0010001111001001011000000010001111001011110101000100)))
(assert (= y (fp #b0 #b11100011001 #b1111001101010010000100111011110000011101000101010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
