(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9633961762340728096631892185541801154613494873046875p-371 {- 4338750660297931 -371 (-4.08206e-112)}
; Y = 1.7250674670314989356256774044595658779144287109375p-48 {+ 3265413574341528 -48 (6.12867e-015)}
; -1.9633961762340728096631892185541801154613494873046875p-371 = 1.7250674670314989356256774044595658779144287109375p-48 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001100 #b1111011010100001001000011011111000000100010011001011)))
(assert (= y (fp #b0 #b01111001111 #b1011100110011110000001011000001001001011001110011000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
