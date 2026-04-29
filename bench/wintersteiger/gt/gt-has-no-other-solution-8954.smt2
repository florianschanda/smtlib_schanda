(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3168690671261356062160530200344510376453399658203125p-17 {- 1427051412634501 -17 (-1.00469e-005)}
; Y = -1.98914557011993853308240431942977011203765869140625p-418 {- 4454715621007332 -418 (-2.93852e-126)}
; -1.3168690671261356062160530200344510376453399658203125p-17 > -1.98914557011993853308240431942977011203765869140625p-418 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101110 #b0101000100011110010101001100100001101011101110000101)))
(assert (= y (fp #b1 #b01001011101 #b1111110100111000101001001110001010100101111111100100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
