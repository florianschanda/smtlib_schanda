(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5651602481689674828402303319307975471019744873046875p528 {+ 2545255483058379 528 (1.3753e+159)}
; Y = 1.387153187640441043271266607916913926601409912109375p249 {+ 1743582951592790 249 (1.25485e+075)}
; 1.5651602481689674828402303319307975471019744873046875p528 = 1.387153187640441043271266607916913926601409912109375p249 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000001111 #b1001000010101110010101111000111011100010100011001011)))
(assert (= y (fp #b0 #b10011111000 #b0110001100011100011110001010011101110101001101010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
