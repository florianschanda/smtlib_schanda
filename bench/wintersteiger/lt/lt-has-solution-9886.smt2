(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8654781572558063462707877988577820360660552978515625p596 {- 3897767106514553 596 (-4.83802e+179)}
; Y = 1.5306266884944914608013277756981551647186279296875p105 {+ 2389730156576632 105 (6.20896e+031)}
; -1.8654781572558063462707877988577820360660552978515625p596 < 1.5306266884944914608013277756981551647186279296875p105 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001010011 #b1101110110001111111110011111110011010000111001111001)))
(assert (= y (fp #b0 #b10001101000 #b1000011111010111001001101001000101110111111101111000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
