(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9922812886861522851944528156309388577938079833984375p-837 {+ 4468837641973671 -837 (2.17392e-252)}
; Y = -1.2738906812216346242649933628854341804981231689453125p-53 {- 1233493969890005 -53 (-1.4143e-016)}
; 1.9922812886861522851944528156309388577938079833984375p-837 = -1.2738906812216346242649933628854341804981231689453125p-53 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010111010 #b1111111000000110001001011000001101010110111110100111)))
(assert (= y (fp #b1 #b01111001010 #b0100011000011101101100110001111010000110101011010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
