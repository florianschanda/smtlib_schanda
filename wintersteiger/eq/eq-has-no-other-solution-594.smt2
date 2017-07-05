(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8497127809945890231091425448539666831493377685546875p795 {+ 3826766163859179 795 (3.85435e+239)}
; Y = 1.45585447473867457546248260769061744213104248046875p276 {+ 2052986042568268 276 (1.76765e+083)}
; 1.8497127809945890231091425448539666831493377685546875p795 = 1.45585447473867457546248260769061744213104248046875p276 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011010 #b1101100110000110110001101101110101011101011011101011)))
(assert (= y (fp #b0 #b10100010011 #b0111010010110010111000001111110010111100111001001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
