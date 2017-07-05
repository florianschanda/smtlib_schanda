(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9456659881105078380159056905540637671947479248046875p-606 {+ 4258900991671435 -606 (7.3264e-183)}
; Y = 0.2196582013718060277795984802651219069957733154296875p-1022 {+ 989252593846939 -1023 (4.88756e-309)}
; 1.9456659881105078380159056905540637671947479248046875p-606 * 0.2196582013718060277795984802651219069957733154296875p-1022 == +zero
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
(assert (= x (fp #b0 #b00110100001 #b1111001000010111001010101000101111011111110010001011)))
(assert (= y (fp #b0 #b00000000000 #b0011100000111011100001010001011100110000101010011011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
