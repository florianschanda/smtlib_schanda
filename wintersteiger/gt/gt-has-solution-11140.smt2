(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2410261498595971385583425217191688716411590576171875p-278 {+ 1085485278694227 -278 (2.5553e-084)}
; Y = -1.430901988710501893109494631062261760234832763671875p342 {- 1940610035789822 342 (-1.28194e+103)}
; 1.2410261498595971385583425217191688716411590576171875p-278 > -1.430901988710501893109494631062261760234832763671875p342 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011101001 #b0011110110110011111000111100011100100000101101010011)))
(assert (= y (fp #b1 #b10101010101 #b0110111001001111100101111011110101001010111111111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
