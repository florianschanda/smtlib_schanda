(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2005116720939204011386891579604707658290863037109375p234 {+ 903024291725615 234 (3.31425e+070)}
; Y = 1.3863748561979252205134116593399085104465484619140625p-200 {+ 1740077658398305 -200 (8.62743e-061)}
; 1.2005116720939204011386891579604707658290863037109375p234 > 1.3863748561979252205134116593399085104465484619140625p-200 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101001 #b0011001101010100101110111010001000011100000100101111)))
(assert (= y (fp #b0 #b01100110111 #b0110001011101001011101100110101101011101111001100001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
