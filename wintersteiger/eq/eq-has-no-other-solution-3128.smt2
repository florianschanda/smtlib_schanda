(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.3582369425193434597787245365907438099384307861328125p-1022 {- 1613355760840461 -1023 (-7.97104e-309)}
; Y = 1.3970650951447070031719022153993137180805206298828125p-739 {+ 1788222214535533 -739 (4.83114e-223)}
; -0.3582369425193434597787245365907438099384307861328125p-1022 = 1.3970650951447070031719022153993137180805206298828125p-739 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0101101110110101011010101001000001010110111100001101)))
(assert (= y (fp #b0 #b00100011100 #b0110010110100110000011101101111000000111100101101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
