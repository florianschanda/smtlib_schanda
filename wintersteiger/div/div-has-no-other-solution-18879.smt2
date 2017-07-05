(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9261403336740114955460967394174076616764068603515625p-339 {+ 4170965261627065 -339 (1.71996e-102)}
; Y = 1.9986638419037763281238540002959780395030975341796875p978 {+ 4497582106266235 978 (5.10594e+294)}
; 1.9261403336740114955460967394174076616764068603515625p-339 / 1.9986638419037763281238540002959780395030975341796875p978 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101100 #b1110110100010111100010000110110010100010111010111001)))
(assert (= y (fp #b0 #b11111010001 #b1111111110101000011011101111110010101100101001111011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
