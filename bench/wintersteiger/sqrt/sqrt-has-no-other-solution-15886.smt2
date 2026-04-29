(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6405937440250608627678730044863186776638031005859375p844 {+ 2884977746887135 844 (1.9245e+254)}
; 1.6405937440250608627678730044863186776638031005859375p844 S == 1.28085664460354831106769779580645263195037841796875p422
; [HW: 1.28085664460354831106769779580645263195037841796875p422] 

; mpf : + 1264865879981068 422
; mpfd: + 1264865879981068 422 (1.38726e+127) class: Pos. norm. non-zero
; hwf : + 1264865879981068 422 (1.38726e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001011 #b1010001111111101111100111001110010011100000111011111)))
(assert (= r (fp #b0 #b10110100101 #b0100011111100110001110001001011101101111110000001100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
