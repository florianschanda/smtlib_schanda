(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -0.8693301317338411049462365554063580930233001708984375p-1022 {- 3915114857338471 -1023 (-1.93432e-308)}
; Y = 1.415415293806568275414292656932957470417022705078125p-74 {+ 1870864162391266 -74 (7.49315e-023)}
; -0.8693301317338411049462365554063580930233001708984375p-1022 * 1.415415293806568275414292656932957470417022705078125p-74 == -zero
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
(assert (= x (fp #b1 #b00000000000 #b1101111010001100011010110110010100111001011001100111)))
(assert (= y (fp #b0 #b01110110101 #b0110101001011000101010000001110100101000010011100010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
