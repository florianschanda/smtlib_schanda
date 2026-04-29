(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.06306718238638797657813483965583145618438720703125p-577 {- 284029339094644 -577 (-2.14908e-174)}
; Y = 1.2645146732524665811325803588260896503925323486328125p526 {+ 1191268183893837 526 (2.7778e+158)}
; -1.06306718238638797657813483965583145618438720703125p-577 > 1.2645146732524665811325803588260896503925323486328125p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111110 #b0001000000100101001010111011110111001100111001110100)))
(assert (= y (fp #b0 #b11000001101 #b0100001110110111001110111100111011101110011101001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
