(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.181115589238432850294202580698765814304351806640625p272 {- 815672100205194 272 (-8.96296e+081)}
; Y = -0.846470704148449382131502716219983994960784912109375p-1022 {- 3812165147782998 -1023 (-1.88346e-308)}
; -1.181115589238432850294202580698765814304351806640625p272 * -0.846470704148449382131502716219983994960784912109375p-1022 == 1.9995594890067340809736151641118340194225311279296875p-751
; [HW: 1.9995594890067340809736151641118340194225311279296875p-751] 

; mpf : + 4501615742225371 -751
; mpfd: + 4501615742225371 -751 (1.68814e-226) class: Pos. norm. non-zero
; hwf : + 4501615742225371 -751 (1.68814e-226) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100001111 #b0010111001011101100101110101110010010011001010001010)))
(assert (= y (fp #b1 #b00000000000 #b1101100010110010010011011101011101010110111101010110)))
(assert (= r (fp #b0 #b00100010000 #b1111111111100011001000010111001110110000101111011011)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
