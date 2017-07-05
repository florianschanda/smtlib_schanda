(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.88989579034862043016573807108215987682342529296875p753 {- 4007734349812620 753 (-8.95415e+226)}
; Y = 1.348691649842062911801576774450950324535369873046875p-719 {+ 1570367584295918 -719 (4.89042e-217)}
; -1.88989579034862043016573807108215987682342529296875p753 > 1.348691649842062911801576774450950324535369873046875p-719 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011110000 #b1110001111010000001101011110010001100101001110001100)))
(assert (= y (fp #b0 #b00100110000 #b0101100101000011110110110010000001110101101111101110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
