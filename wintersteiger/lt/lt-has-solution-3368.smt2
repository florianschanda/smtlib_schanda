(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3237239293269904560901295553776435554027557373046875p-902 {+ 1457922967487947 -902 (3.91509e-272)}
; Y = -1.39656219349150934050385330920107662677764892578125p-275 {- 1785957346837588 -275 (-2.30044e-083)}
; 1.3237239293269904560901295553776435554027557373046875p-902 < -1.39656219349150934050385330920107662677764892578125p-275 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111001 #b0101001011011111100100100100100101100100010111001011)))
(assert (= y (fp #b1 #b01011101100 #b0110010110000101000110011001001111100000010001010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
