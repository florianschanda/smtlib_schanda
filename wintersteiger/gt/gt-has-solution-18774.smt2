(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1472587424554225865591661204234696924686431884765625p-557 {+ 663194417649289 -557 (2.43195e-168)}
; Y = 1.4361996002739993993913003578200004994869232177734375p871 {+ 1964468357253143 871 (2.26121e+262)}
; 1.1472587424554225865591661204234696924686431884765625p-557 > 1.4361996002739993993913003578200004994869232177734375p871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010010 #b0010010110110010101111111011101011100101011010001001)))
(assert (= y (fp #b0 #b11101100110 #b0110111110101010110001101110100110110100100000010111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
