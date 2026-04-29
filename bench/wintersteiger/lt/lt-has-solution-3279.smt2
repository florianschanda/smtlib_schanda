(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5365749691840762114480867239763028919696807861328125p829 {- 2416518831273741 829 (-5.50073e+249)}
; Y = 1.2007931502916606714137515155016444623470306396484375p-731 {+ 904291956832071 -731 (1.06302e-220)}
; -1.5365749691840762114480867239763028919696807861328125p829 < 1.2007931502916606714137515155016444623470306396484375p-731 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100111100 #b1000100101011100111110100010100001111111011100001101)))
(assert (= y (fp #b0 #b00100100100 #b0011001101100111001011100000110111000011011101000111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
