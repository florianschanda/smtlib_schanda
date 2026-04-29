(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.075665769570374408203861094079911708831787109375p792 {- 340768331641840 792 (-2.80178e+238)}
; Y = -1.4660960389428996375471569990622811019420623779296875p-387 {- 2099109947302107 -387 (-4.65108e-117)}
; -1.075665769570374408203861094079911708831787109375p792 < -1.4660960389428996375471569990622811019420623779296875p-387 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010111 #b0001001101011110110101001111010110111011001111110000)))
(assert (= y (fp #b1 #b01001111100 #b0111011101010010000100011110110000001110000011011011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
