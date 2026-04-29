(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1185034817684726959896579501219093799591064453125p669 {- 533692236334600 669 (-2.73971e+201)}
; Y = 1.55653068769512525904019639710895717144012451171875p940 {+ 2506391397724012 940 (1.44662e+283)}
; -1.1185034817684726959896579501219093799591064453125p669 > 1.55653068769512525904019639710895717144012451171875p940 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011100 #b0001111001010110001111101000001010101000011000001000)))
(assert (= y (fp #b0 #b11110101011 #b1000111001111000110010111000111011011110111101101100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
