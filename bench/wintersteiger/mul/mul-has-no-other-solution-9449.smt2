(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.62899233941911791845313928206451237201690673828125p-684 {- 2832729665426836 -684 (-2.02956e-206)}
; Y = 1.08752886999385101063353431527502834796905517578125p-530 {+ 394194986288468 -530 (3.09416e-160)}
; -1.62899233941911791845313928206451237201690673828125p-684 * 1.08752886999385101063353431527502834796905517578125p-530 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101010011 #b1010000100000101101001000101011100111101010110010100)))
(assert (= y (fp #b0 #b00111101101 #b0001011001101000010010101100001000010100010101010100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
