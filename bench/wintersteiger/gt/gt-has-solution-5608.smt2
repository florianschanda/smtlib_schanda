(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.83369338730352904320852758246473968029022216796875p-217 {+ 3754621228401420 -217 (8.70598e-066)}
; Y = 1.3882075095995232150158926742733456194400787353515625p-132 {+ 1748331195574841 -132 (2.54973e-040)}
; 1.83369338730352904320852758246473968029022216796875p-217 > 1.3882075095995232150158926742733456194400787353515625p-132 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100110 #b1101010101101100111011100000100101011100001100001100)))
(assert (= y (fp #b0 #b01101111011 #b0110001101100001100100010011110111001010101000111001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
