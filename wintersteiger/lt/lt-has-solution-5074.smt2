(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4526108148705325628924356351490132510662078857421875p805 {+ 2038377897194787 805 (3.09953e+242)}
; Y = 1.30815057677718726836246787570416927337646484375p876 {+ 1387786822747744 876 (6.59074e+263)}
; 1.4526108148705325628924356351490132510662078857421875p805 < 1.30815057677718726836246787570416927337646484375p876 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100100100 #b0111001111011110010011010110011110101111010100100011)))
(assert (= y (fp #b0 #b11101101011 #b0100111011100010111101001100100110000000011001100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
