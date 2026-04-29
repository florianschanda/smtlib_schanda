(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5542226475611451430580700616701506078243255615234375p504 {- 2495996909036663 504 (-8.14012e+151)}
; Y = 1.6741377510173691689487895928323268890380859375p-192 {+ 3036046524278208 -192 (2.66706e-058)}
; -1.5542226475611451430580700616701506078243255615234375p504 = 1.6741377510173691689487895928323268890380859375p-192 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111110111 #b1000110111100001100010010001000111111010010001110111)))
(assert (= y (fp #b0 #b01100111111 #b1010110010010100010010101010100110011110010111000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
