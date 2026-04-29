(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.72740021408745381137350705103017389774322509765625p905 {+ 3275919333113476 905 (4.67239e+272)}
; Y = 1.137864038605096883571832222514785826206207275390625p-700 {+ 620884432889706 -700 (2.16318e-211)}
; 1.72740021408745381137350705103017389774322509765625p905 < 1.137864038605096883571832222514785826206207275390625p-700 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001000 #b1011101000110110111001101000001010011011111010000100)))
(assert (= y (fp #b0 #b00101000011 #b0010001101001011000011101100000100011010011101101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
