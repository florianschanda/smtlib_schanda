(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9376382817036421624123931906069628894329071044921875p-684 {+ 4222747416088835 -684 (2.4141e-206)}
; Y = 1.0276436112611511131120778372860513627529144287109375p1018 {+ 124495757374895 1018 (2.88654e+306)}
; 1.9376382817036421624123931906069628894329071044921875p-684 / 1.0276436112611511131120778372860513627529144287109375p1018 == +zero
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
(assert (= x (fp #b0 #b00101010011 #b1111000000001001000011111111101101100101000100000011)))
(assert (= y (fp #b0 #b11111111001 #b0000011100010011101001101101011001001111010110101111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
