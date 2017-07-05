(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.415781299976294871356685689534060657024383544921875p-1022 {- 1872512507640862 -1023 (-9.25144e-309)}
; Y = -1.59106763696769970550803918740712106227874755859375p724 {- 2661931989598492 724 (-1.40412e+218)}
; -0.415781299976294871356685689534060657024383544921875p-1022 < -1.59106763696769970550803918740712106227874755859375p724 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0110101001110000101001001010110110101111110000011110)))
(assert (= y (fp #b1 #b11011010011 #b1001011101010000001101010110101010000000000100011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
