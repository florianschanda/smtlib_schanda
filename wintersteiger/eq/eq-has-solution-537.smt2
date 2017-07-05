(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2102309818992618151156648309552110731601715087890625p75 {+ 946796171743249 75 (4.57212e+022)}
; Y = 1.37611988553539621449317564838565886020660400390625p-992 {+ 1693893376343844 -992 (3.28776e-299)}
; 1.2102309818992618151156648309552110731601715087890625p75 = 1.37611988553539621449317564838565886020660400390625p-992 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001001010 #b0011010111010001101100101001011111011101000000010001)))
(assert (= y (fp #b0 #b00000011111 #b0110000001001001011001001000111110111111111100100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
