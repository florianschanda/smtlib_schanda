(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8728396475604147664029142106301151216030120849609375p661 {+ 3930920311507279 661 (1.79196e+199)}
; Y = -1.3351366109511364488326989885536022484302520751953125p173 {- 1509321116197749 173 (-1.59851e+052)}
; 1.8728396475604147664029142106301151216030120849609375p661 > -1.3351366109511364488326989885536022484302520751953125p173 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010100 #b1101111101110010011010110100110011101100100101001111)))
(assert (= y (fp #b1 #b10010101100 #b0101010111001011100000110100111110111010001101110101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
