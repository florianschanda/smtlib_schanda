(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.032913597007225181556577808805741369724273681640625p-694 {- 148229663217162 -694 (-1.25674e-209)}
; Y = -1.8853213537620170381359230304951779544353485107421875p-554 {- 3987132918905763 -554 (-3.19719e-167)}
; -1.032913597007225181556577808805741369724273681640625p-694 * -1.8853213537620170381359230304951779544353485107421875p-554 == +zero
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
(assert (= x (fp #b1 #b00101001001 #b0000100001101101000001101000011010111101011000001010)))
(assert (= y (fp #b1 #b00111010101 #b1110001010100100011010111001010011011011101110100011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
