(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.2502797129319536129088419329491443932056427001953125p-1022 {+ 1127159621898741 -1023 (5.56891e-309)}
; Y = -1.7309069237802205964982249497552402317523956298828125p906 {- 3291712149579117 906 (-9.36375e+272)}
; 0.2502797129319536129088419329491443932056427001953125p-1022 < -1.7309069237802205964982249497552402317523956298828125p906 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0100000000010010010101001100110111100101000111110101)))
(assert (= y (fp #b1 #b11110001001 #b1011101100011100101101110101011000001110010101101101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
