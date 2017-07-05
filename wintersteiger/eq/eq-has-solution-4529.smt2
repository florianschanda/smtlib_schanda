(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.43389949037110664420424654963426291942596435546875p-740 {+ 1954109583151564 -740 (2.47926e-223)}
; Y = 1.025721835568672357652530990890227258205413818359375p910 {+ 115840849082358 910 (8.87821e+273)}
; 1.43389949037110664420424654963426291942596435546875p-740 = 1.025721835568672357652530990890227258205413818359375p910 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011011 #b0110111100010100000010010111100011100101000111001100)))
(assert (= y (fp #b0 #b11110001101 #b0000011010010101101101001100101010001111011111110110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
