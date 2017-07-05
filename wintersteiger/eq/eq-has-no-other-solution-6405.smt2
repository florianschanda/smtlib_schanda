(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8798404151162462216717585761216469109058380126953125p-912 {- 3962448965663029 -912 (-5.42956e-275)}
; Y = 1.10970589818130616066582661005668342113494873046875p-102 {+ 494071442169676 -102 (2.18851e-031)}
; -1.8798404151162462216717585761216469109058380126953125p-912 = 1.10970589818130616066582661005668342113494873046875p-102 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001101111 #b1110000100111101001110001011000010011111100100110101)))
(assert (= y (fp #b0 #b01110011001 #b0001110000010101101011111000110011011101111101001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
