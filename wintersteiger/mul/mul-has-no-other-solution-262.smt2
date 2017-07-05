(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5056322363464398339516492342227138578891754150390625p271 {- 2277165151196337 271 (-5.71278e+081)}
; Y = -1.1561216317057176894422809709794819355010986328125p-646 {- 703109322374344 -646 (-3.95937e-195)}
; -1.5056322363464398339516492342227138578891754150390625p271 * -1.1561216317057176894422809709794819355010986328125p-646 == 1.7406939978335749241722396618570201098918914794921875p-375
; [HW: 1.7406939978335749241722396618570201098918914794921875p-375] 

; mpf : + 3335789212638851 -375
; mpfd: + 3335789212638851 -375 (2.2619e-113) class: Pos. norm. non-zero
; hwf : + 3335789212638851 -375 (2.2619e-113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001110 #b1000000101110001000111010011111011101001010010110001)))
(assert (= y (fp #b1 #b00101111001 #b0010011111110111100101100101011001011111110011001000)))
(assert (= r (fp #b0 #b01010001000 #b1011110110011110000111110011000100001001111010000011)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
