(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5871558655494990563994406329584307968616485595703125p-280 {- 2644314937297125 -280 (-8.16998e-085)}
; Y = -1.0526763160923360285181615836336277425289154052734375p389 {- 237233037524695 389 (-1.32728e+117)}
; -1.5871558655494990563994406329584307968616485595703125p-280 = -1.0526763160923360285181615836336277425289154052734375p389 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100111 #b1001011001001111110110001100100000110000100011100101)))
(assert (= y (fp #b1 #b10110000100 #b0000110101111100001100011110111011100011111011010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
