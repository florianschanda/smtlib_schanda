(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5546666266173991832744150087819434702396392822265625p1021 {+ 2497996412948969 1021 (3.49352e+307)}
; Y = -1.5095237215962169496918932054541073739528656005859375p399 {- 2294690842717151 399 (-1.94898e+120)}
; 1.5546666266173991832744150087819434702396392822265625p1021 < -1.5095237215962169496918932054541073739528656005859375p399 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111100 #b1000110111111110101000011100110110000001000111101001)))
(assert (= y (fp #b1 #b10110001110 #b1000001001110000001001011000100011001010101111011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
