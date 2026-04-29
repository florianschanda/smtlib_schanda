(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.40401201243583084732335919397883117198944091796875p-95 {- 1819508348659212 -95 (-3.54422e-029)}
; Y = -1.5472650416277360374550653432379476726055145263671875p863 {- 2464662637547571 863 (-9.51592e+259)}
; -1.40401201243583084732335919397883117198944091796875p-95 < -1.5472650416277360374550653432379476726055145263671875p863 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100000 #b0110011101101101010101001100110010011010011000001100)))
(assert (= y (fp #b1 #b11101011110 #b1000110000011001100011111101000000001001000000110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
