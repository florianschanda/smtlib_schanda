(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4629343096259532774894296380807645618915557861328125p-13 {+ 2084870784328461 -13 (0.000178581)}
; 1.4629343096259532774894296380807645618915557861328125p-13 S == 1.7105170619587244384973701016861014068126678466796875p-7
; [HW: 1.7105170619587244384973701016861014068126678466796875p-7] 

; mpf : + 3199884375477691 -7
; mpfd: + 3199884375477691 -7 (0.0133634) class: Pos. norm. non-zero
; hwf : + 3199884375477691 -7 (0.0133634) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110010 #b0111011010000010110111001110100000001010001100001101)))
(assert (= r (fp #b0 #b01111111000 #b1011010111100100011100100011100001011100110110111011)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
