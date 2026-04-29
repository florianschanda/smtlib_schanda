(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.127183855237156695494604718987829983234405517578125p-354 {- 572785163053602 -354 (-3.07168e-107)}
; Y = 1.37063989258189167230739258229732513427734375p-334 {+ 1669213682120448 -334 (3.91656e-101)}
; -1.127183855237156695494604718987829983234405517578125p-354 < 1.37063989258189167230739258229732513427734375p-334 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011101 #b0010000010001111000111110000001011010010101000100010)))
(assert (= y (fp #b0 #b01010110001 #b0101111011100010010000011000100100111011011100000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
