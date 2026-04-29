(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7219579178683270814786965274834074079990386962890625p662 {+ 3251409409888977 662 (3.29518e+199)}
; Y = 1.39065188814993945243259076960384845733642578125p85 {+ 1759339697903648 85 (5.37982e+025)}
; 1.7219579178683270814786965274834074079990386962890625p662 > 1.39065188814993945243259076960384845733642578125p85 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010010101 #b1011100011010010001110111110111001010101001011010001)))
(assert (= y (fp #b0 #b10001010100 #b0110010000000001110000110001101110111001100000100000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
