(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2320479446431062964251168523333035409450531005859375p102 {+ 1045051037026783 102 (6.24723e+030)}
; Y = 1.2433568429036554459088392832200042903423309326171875p-36 {+ 1095981787018963 -36 (1.80932e-011)}
; 1.2320479446431062964251168523333035409450531005859375p102 > 1.2433568429036554459088392832200042903423309326171875p-36 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100101 #b0011101101100111011111100111110101011000100111011111)))
(assert (= y (fp #b0 #b01111011011 #b0011111001001100101000100101000110000111011011010011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
