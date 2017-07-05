(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.908818166416356376657859073020517826080322265625p-366 {+ 4092953155620240 -366 (1.26995e-110)}
; Y = 1.402972273622264509640444885008037090301513671875p-727 {+ 1814825781325872 -727 (1.9872e-219)}
; 1.908818166416356376657859073020517826080322265625p-366 * 1.402972273622264509640444885008037090301513671875p-727 == +zero
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
(assert (= x (fp #b0 #b01010010001 #b1110100010101000010011101010111011000100110110010000)))
(assert (= y (fp #b0 #b00100101000 #b0110011100101001001100001110000001100111000000110000)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
