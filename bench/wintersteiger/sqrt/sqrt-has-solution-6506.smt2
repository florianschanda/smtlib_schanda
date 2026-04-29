(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9082547788670980448699765474884770810604095458984375p407 {+ 4090415883663335 407 (6.30732e+122)}
; 1.9082547788670980448699765474884770810604095458984375p407 S == 1.953588891689906237303375746705569326877593994140625p203
; [HW: 1.953588891689906237303375746705569326877593994140625p203] 

; mpf : + 4294582577279306 203
; mpfd: + 4294582577279306 203 (2.51144e+061) class: Pos. norm. non-zero
; hwf : + 4294582577279306 203 (2.51144e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010110 #b1110100010000011011000101001101110101011011111100111)))
(assert (= r (fp #b0 #b10011001010 #b1111010000011110011001101100111110100011000101001010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
