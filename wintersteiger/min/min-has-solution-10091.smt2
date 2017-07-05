(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2774874346327773633191782209905795753002166748046875p291 {- 1249692307212171 291 (-5.08259e+087)}
; Y = 1.778287800531934248482457405771128833293914794921875p-789 {+ 3505096648462622 -789 (5.4618e-238)}
; -1.2774874346327773633191782209905795753002166748046875p291 m 1.778287800531934248482457405771128833293914794921875p-789 == -1.2774874346327773633191782209905795753002166748046875p291
; [HW: -1.2774874346327773633191782209905795753002166748046875p291] 

; mpf : - 1249692307212171 291
; mpfd: - 1249692307212171 291 (-5.08259e+087) class: Neg. norm. non-zero
; hwf : - 1249692307212171 291 (-5.08259e+087) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100100010 #b0100011100001001011010101010000011001100011110001011)))
(assert (= y (fp #b0 #b00011101010 #b1100011100111101110111101000101000101001000100011110)))
(assert (= r (fp #b1 #b10100100010 #b0100011100001001011010101010000011001100011110001011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
