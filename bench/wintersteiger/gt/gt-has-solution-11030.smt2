(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5421590006248788728981935491901822388172149658203125p762 {- 2441667073189765 762 (-3.74098e+229)}
; Y = 1.8332750783612576928049975322210229933261871337890625p-612 {+ 3752737332404881 -612 (1.07862e-184)}
; -1.5421590006248788728981935491901822388172149658203125p762 > 1.8332750783612576928049975322210229933261871337890625p-612 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111001 #b1000101011001010111011101010100011101010011110000101)))
(assert (= y (fp #b0 #b00110011011 #b1101010101010001100000111111101000100010001010010001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
