(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2682145910952440370778049327782355248928070068359375p-336 {+ 1207931132511871 -336 (9.05971e-102)}
; Y = -1.8788696259798964849352387318504042923450469970703125p794 {- 3958076920070309 794 (-1.95755e+239)}
; 1.2682145910952440370778049327782355248928070068359375p-336 = -1.8788696259798964849352387318504042923450469970703125p794 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010101111 #b0100010010101001101101100010000100010000011001111111)))
(assert (= y (fp #b1 #b11100011001 #b1110000011111101100110011000110100001000000010100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
