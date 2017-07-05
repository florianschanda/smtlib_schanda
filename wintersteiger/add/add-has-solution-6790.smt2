(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9404363259657875229180490350699983537197113037109375p-4 {- 4235348687185199 -4 (-0.121277)}
; Y = +zero {+ 0 -1023 (0)}
; -1.9404363259657875229180490350699983537197113037109375p-4 + +zero == -1.9404363259657875229180490350699983537197113037109375p-4
; [HW: -1.9404363259657875229180490350699983537197113037109375p-4] 

; mpf : - 4235348687185199 -4
; mpfd: - 4235348687185199 -4 (-0.121277) class: Neg. norm. non-zero
; hwf : - 4235348687185199 -4 (-0.121277) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111011 #b1111000011000000011011110101111111111110010100101111)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01111111011 #b1111000011000000011011110101111111111110010100101111)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
