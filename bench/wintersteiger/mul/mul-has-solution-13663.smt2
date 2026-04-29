(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.606174216072336680127818908658809959888458251953125p-650 {+ 2729965973624978 -650 (3.43792e-196)}
; Y = 1.7632967112197552861374560961849056184291839599609375p-919 {+ 3437582784222415 -919 (3.97887e-277)}
; 1.606174216072336680127818908658809959888458251953125p-650 * 1.7632967112197552861374560961849056184291839599609375p-919 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110101 #b1001101100101110001110111100000110110101100010010010)))
(assert (= y (fp #b0 #b00001101000 #b1100001101100111011010011100101111010101010011001111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
