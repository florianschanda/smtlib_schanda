(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3896970312964798122123966095387004315853118896484375p-241 {- 1755039404934215 -241 (-3.9327e-073)}
; Y = -1.8503020773458589420812359094270505011081695556640625p833 {- 3829420118687169 833 (-1.05981e+251)}
; -1.3896970312964798122123966095387004315853118896484375p-241 = -1.8503020773458589420812359094270505011081695556640625p833 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100001110 #b0110001111000011001011110100010011000100010001000111)))
(assert (= y (fp #b1 #b11101000000 #b1101100110101101011001011001110111101011110111000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
