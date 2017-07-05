(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5574764140790928745872179206344299018383026123046875p305 {+ 2510650570714443 305 (1.01524e+092)}
; Y = -1.328865832062813279179636083426885306835174560546875p915 {- 1481080038732974 915 (-3.68067e+275)}
; 1.5574764140790928745872179206344299018383026123046875p305 < -1.328865832062813279179636083426885306835174560546875p915 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110000 #b1000111010110110110001100011011011000010110101001011)))
(assert (= y (fp #b1 #b11110010010 #b0101010000110000100011010001100101111011010010101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
