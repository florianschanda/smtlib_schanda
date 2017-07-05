(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.921966620301895023459337608073838055133819580078125p-405 {- 4152168527639650 -405 (-2.32594e-122)}
; Y = -1.7892497291382769564194177291938103735446929931640625p786 {- 3554464786049409 786 (-7.28195e+236)}
; -1.921966620301895023459337608073838055133819580078125p-405 M -1.7892497291382769564194177291938103735446929931640625p786 == -1.921966620301895023459337608073838055133819580078125p-405
; [HW: -1.921966620301895023459337608073838055133819580078125p-405] 

; mpf : - 4152168527639650 -405
; mpfd: - 4152168527639650 -405 (-2.32594e-122) class: Neg. norm. non-zero
; hwf : - 4152168527639650 -405 (-2.32594e-122) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001101010 #b1110110000000110000000010010001000110011010001100010)))
(assert (= y (fp #b1 #b11100010001 #b1100101000001100010001010010111100000110100110000001)))
(assert (= r (fp #b1 #b01001101010 #b1110110000000110000000010010001000110011010001100010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
