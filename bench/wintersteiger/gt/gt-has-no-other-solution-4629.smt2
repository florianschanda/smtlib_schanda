(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.614075281968592623371705485624261200428009033203125p-1005 {+ 2765549211051186 -1005 (4.70737e-303)}
; Y = 1.7222328769828190164759007529937662184238433837890625p553 {+ 3252647715654545 553 (5.07785e+166)}
; 1.614075281968592623371705485624261200428009033203125p-1005 > 1.7222328769828190164759007529937662184238433837890625p553 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010010 #b1001110100110100000010011010010101010110010010110010)))
(assert (= y (fp #b0 #b11000101000 #b1011100011100100010000001111101010111100101110010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
