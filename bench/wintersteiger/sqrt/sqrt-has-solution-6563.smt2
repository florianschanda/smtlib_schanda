(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.679658019325129370002969153574667870998382568359375p-516 {+ 3060907602572022 -516 (7.82966e-156)}
; 1.679658019325129370002969153574667870998382568359375p-516 S == 1.296016211057998024358539623790420591831207275390625p-258
; [HW: 1.296016211057998024358539623790420591831207275390625p-258] 

; mpf : + 1333138497816426 -258
; mpfd: + 1333138497816426 -258 (2.79815e-078) class: Pos. norm. non-zero
; hwf : + 1333138497816426 -258 (2.79815e-078) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111011 #b1010110111111110000100010110010101110111001011110110)))
(assert (= r (fp #b0 #b01011111101 #b0100101111000111101101111110100110010100011101101010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
