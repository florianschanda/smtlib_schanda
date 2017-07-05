(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7589720557952890356290254203486256301403045654296875p-546 {+ 3418106267664283 -546 (7.63627e-165)}
; Y = -1.675824630482116273100245962268672883510589599609375p-1002 {- 3043643554007062 -1002 (-3.90997e-302)}
; 1.7589720557952890356290254203486256301403045654296875p-546 = -1.675824630482116273100245962268672883510589599609375p-1002 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111011101 #b1100001001001011111111100001111000110111111110011011)))
(assert (= y (fp #b1 #b00000010101 #b1010110100000010110101111100110111000000100000010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
