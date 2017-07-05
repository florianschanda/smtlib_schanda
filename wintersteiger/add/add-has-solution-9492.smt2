(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7353783191057321477757113825646229088306427001953125p-268 {+ 3311849523900917 -268 (3.65894e-081)}
; Y = -1.4401417921280745826351221694494597613811492919921875p233 {- 1982222411018179 233 (-1.9879e+070)}
; 1.7353783191057321477757113825646229088306427001953125p-268 + -1.4401417921280745826351221694494597613811492919921875p233 == -1.4401417921280745826351221694494597613811492919921875p233
; [HW: -1.4401417921280745826351221694494597613811492919921875p233] 

; mpf : - 1982222411018179 233
; mpfd: - 1982222411018179 233 (-1.9879e+070) class: Neg. norm. non-zero
; hwf : - 1982222411018179 233 (-1.9879e+070) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011110011 #b1011110001000001110000001110011010111111000111110101)))
(assert (= y (fp #b1 #b10011101000 #b0111000010101101001000011110101011001010111111000011)))
(assert (= r (fp #b1 #b10011101000 #b0111000010101101001000011110101011001010111111000011)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
