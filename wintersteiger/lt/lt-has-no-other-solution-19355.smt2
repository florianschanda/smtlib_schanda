(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8724808453507788552627744138590060174465179443359375p-513 {+ 3929304410009663 -513 (6.9828e-155)}
; Y = -1.619195333990850027561236856854520738124847412109375p491 {- 2788607875430742 491 (-1.03521e+148)}
; 1.8724808453507788552627744138590060174465179443359375p-513 < -1.619195333990850027561236856854520738124847412109375p491 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111110 #b1101111101011010111001111001100100101011000000111111)))
(assert (= y (fp #b1 #b10111101010 #b1001111010000011100101011101110101010011100101010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
