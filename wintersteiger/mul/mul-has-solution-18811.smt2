(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.129222466829703730439860009937547147274017333984375p-879 {- 581966253462150 -879 (-2.80165e-265)}
; Y = 1.4601215745056499439868957779253832995891571044921875p-553 {+ 2072203351488771 -553 (4.95224e-167)}
; -1.129222466829703730439860009937547147274017333984375p-879 * 1.4601215745056499439868957779253832995891571044921875p-553 == -zero
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
(assert (= x (fp #b1 #b00010010000 #b0010000100010100101110010011110011110001001010000110)))
(assert (= y (fp #b0 #b00111010110 #b0111010111001010100001110000101010101111100100000011)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
