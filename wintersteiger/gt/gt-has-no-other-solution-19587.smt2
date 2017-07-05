(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.550494763978367718237905137357302010059356689453125p919 {+ 2479208013922386 919 (6.87126e+276)}
; Y = 1.100255225243063961215739254839718341827392578125p-519 {+ 451509395046608 -519 (6.411e-157)}
; 1.550494763978367718237905137357302010059356689453125p919 > 1.100255225243063961215739254839718341827392578125p-519 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010110 #b1000110011101101001110011000111111101000000001010010)))
(assert (= y (fp #b0 #b00111111000 #b0001100110101010010100111001000110101100000011010000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
