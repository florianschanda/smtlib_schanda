(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6503513923786685690942022119998000562191009521484375p203 {- 2928922288376455 203 (-2.12161e+061)}
; Y = -1.3559123888241966238155100654694251716136932373046875p-721 {- 1602886901685195 -721 (-1.22915e-217)}
; -1.6503513923786685690942022119998000562191009521484375p203 m -1.3559123888241966238155100654694251716136932373046875p-721 == -1.6503513923786685690942022119998000562191009521484375p203
; [HW: -1.6503513923786685690942022119998000562191009521484375p203] 

; mpf : - 2928922288376455 203
; mpfd: - 2928922288376455 203 (-2.12161e+061) class: Neg. norm. non-zero
; hwf : - 2928922288376455 203 (-2.12161e+061) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011001010 #b1010011001111101011011011100100100101100101010000111)))
(assert (= y (fp #b1 #b00100101110 #b0101101100011101000100110000011000111101101111001011)))
(assert (= r (fp #b1 #b10011001010 #b1010011001111101011011011100100100101100101010000111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
