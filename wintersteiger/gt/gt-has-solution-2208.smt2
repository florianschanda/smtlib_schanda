(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.602939701003416761437847526394762098789215087890625p-9 {- 2715399012765866 -9 (-0.00313074)}
; Y = 1.0425709684337822746869051115936599671840667724609375p-140 {+ 191722597575183 -140 (7.48008e-043)}
; -1.602939701003416761437847526394762098789215087890625p-9 > 1.0425709684337822746869051115936599671840667724609375p-140 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110110 #b1001101001011010010000011001100101000101000010101010)))
(assert (= y (fp #b0 #b01101110011 #b0000101011100101111011100101010100101110101000001111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
