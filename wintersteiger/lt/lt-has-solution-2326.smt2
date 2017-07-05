(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5545814520470522257511447605793364346027374267578125p-985 {- 2497612820785693 -985 (-4.75409e-297)}
; Y = 1.6068353142287612467242752245510928332805633544921875p-276 {+ 2732943295035907 -276 (1.3234e-083)}
; -1.5545814520470522257511447605793364346027374267578125p-985 < 1.6068353142287612467242752245510928332805633544921875p-276 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100110 #b1000110111111001000011001100111110000010101000011101)))
(assert (= y (fp #b0 #b01011101011 #b1001101101011001100011110010010010101011101000000011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
