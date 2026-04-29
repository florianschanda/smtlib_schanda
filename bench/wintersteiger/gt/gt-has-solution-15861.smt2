(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6715794820857770019983945530839264392852783203125p660 {+ 3024525105271176 660 (7.99695e+198)}
; Y = 1.957603293561849255866036401130259037017822265625p-288 {+ 4312661836053904 -288 (3.93628e-087)}
; 1.6715794820857770019983945530839264392852783203125p660 > 1.957603293561849255866036401130259037017822265625p-288 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010011 #b1010101111101100101000100000100000111001000110001000)))
(assert (= y (fp #b0 #b01011011111 #b1111010100100101011111010100110001100011110110010000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
