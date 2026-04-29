(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9470906884279164383855231790221296250820159912109375p-631 {- 4265317271490031 -631 (-2.18504e-190)}
; Y = 1.6702821586846454682273588332463987171649932861328125p-584 {+ 3018682480085261 -584 (2.63799e-176)}
; -1.9470906884279164383855231790221296250820159912109375p-631 * 1.6702821586846454682273588332463987171649932861328125p-584 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110001000 #b1111001001110100100010010000110100100100110111101111)))
(assert (= y (fp #b0 #b00110110111 #b1010101110010111100111001000111010100100100100001101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
