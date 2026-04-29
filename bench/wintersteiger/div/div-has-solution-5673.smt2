(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1524473715646734728323963281582109630107879638671875p-374 {- 686561925772275 -374 (-2.99504e-113)}
; Y = -1.2087833260789953016001163632608950138092041015625p1005 {- 940276509530536 1005 (-4.14471e+302)}
; -1.1524473715646734728323963281582109630107879638671875p-374 / -1.2087833260789953016001163632608950138092041015625p1005 == +zero
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
(assert (= x (fp #b1 #b01010001001 #b0010011100000110110010100111101100111011001111110011)))
(assert (= y (fp #b1 #b11111101100 #b0011010101110010110100101111010101110101100110101000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
