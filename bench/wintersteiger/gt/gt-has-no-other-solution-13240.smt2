(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1768473973132114185347063539666123688220977783203125p783 {+ 796449872641221 783 (5.98697e+235)}
; Y = -1.8449699747592827048237040798994712531566619873046875p-311 {- 3805406463465163 -311 (-4.42243e-094)}
; 1.1768473973132114185347063539666123688220977783203125p783 > -1.8449699747592827048237040798994712531566619873046875p-311 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100001110 #b0010110101000101110111101111101111010111110011000101)))
(assert (= y (fp #b1 #b01011001000 #b1101100001001111111100111100011110110001011011001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
