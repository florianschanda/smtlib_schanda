(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.12477484634567925780856967321597039699554443359375p613 {+ 561935951507612 613 (3.82343e+184)}
; Y = 1.5818603496905818683870847962680272758007049560546875p588 {+ 2620466054048171 588 (1.60253e+177)}
; 1.12477484634567925780856967321597039699554443359375p613 > 1.5818603496905818683870847962680272758007049560546875p588 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100100 #b0001111111110001001111101000110001101011000010011100)))
(assert (= y (fp #b0 #b11001001011 #b1001010011110100110011001100010011000010100110101011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
