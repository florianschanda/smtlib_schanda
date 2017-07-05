(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.032244931891282302416357197216711938381195068359375p-797 {+ 145218263250166 -797 (1.23844e-240)}
; Y = -1.2519496704958867905332908776472322642803192138671875p-765 {- 1134680442161395 -765 (-6.4512e-231)}
; 1.032244931891282302416357197216711938381195068359375p-797 + -1.2519496704958867905332908776472322642803192138671875p-765 == -1.2519496702555483746976960901520214974880218505859375p-765
; [HW: -1.2519496702555483746976960901520214974880218505859375p-765] 

; mpf : - 1134680441079007 -765
; mpfd: - 1134680441079007 -765 (-6.4512e-231) class: Neg. norm. non-zero
; hwf : - 1134680441079007 -765 (-6.4512e-231) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100010 #b0000100001000001001101000010111111101111010011110110)))
(assert (= y (fp #b1 #b00100000010 #b0100000001111111110001100000101100000100100011110011)))
(assert (= r (fp #b1 #b00100000010 #b0100000001111111110001100000100111111100010011011111)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
