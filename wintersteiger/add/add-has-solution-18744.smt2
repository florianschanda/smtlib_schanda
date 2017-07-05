(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0800587851655796267635878393775783479213714599609375p-413 {- 360552715039439 -413 (-5.10575e-125)}
; Y = 1.72193783564123759077801878447644412517547607421875p252 {+ 3251318967578540 252 (1.24617e+076)}
; -1.0800587851655796267635878393775783479213714599609375p-413 + 1.72193783564123759077801878447644412517547607421875p252 == 1.7219378356412373687334138594451360404491424560546875p252
; [HW: 1.7219378356412373687334138594451360404491424560546875p252] 

; mpf : + 3251318967578539 252
; mpfd: + 3251318967578539 252 (1.24617e+076) class: Pos. norm. non-zero
; hwf : + 3251318967578539 252 (1.24617e+076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100010 #b0001010001111110101110111000100000001011001011001111)))
(assert (= y (fp #b0 #b10011111011 #b1011100011010000111010110000000111010010111110101100)))
(assert (= r (fp #b0 #b10011111011 #b1011100011010000111010110000000111010010111110101011)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
