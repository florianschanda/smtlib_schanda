(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8135511551193628232425680835149250924587249755859375p946 {+ 3663908679042399 946 (1.07871e+285)}
; Y = 1.4624066082459410420568701738375239074230194091796875p824 {+ 2082494228590075 824 (1.636e+248)}
; 1.8135511551193628232425680835149250924587249755859375p946 > 1.4624066082459410420568701738375239074230194091796875p824 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110001 #b1101000001000100111000110111010011011100010101011111)))
(assert (= y (fp #b0 #b11100110111 #b0111011001100000010001111000101111011110110111111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
