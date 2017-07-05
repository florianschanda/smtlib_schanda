(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0205140036582711626778063873643986880779266357421875p273 {- 92386859231267 273 (-1.54884e+082)}
; Y = 1.44703322403235556947720397147350013256072998046875p58 {+ 2013258661174348 58 (4.17079e+017)}
; -1.0205140036582711626778063873643986880779266357421875p273 = 1.44703322403235556947720397147350013256072998046875p58 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100010000 #b0000010101000000011001111101111011010010100000100011)))
(assert (= y (fp #b0 #b10000111001 #b0111001001110000110001001111010101110001110001001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
