(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 0.7128346811939028082605318559217266738414764404296875p-1022 {+ 3210322004601627 -1023 (1.58611e-308)}
; Y = 0.8073334618975167575882778692175634205341339111328125p-1022 {+ 3635906678165389 -1023 (1.79638e-308)}
; 0.7128346811939028082605318559217266738414764404296875p-1022 * 0.8073334618975167575882778692175634205341339111328125p-1022 == +zero
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
(assert (= x (fp #b0 #b00000000000 #b1011011001111100010101010110101100101110101100011011)))
(assert (= y (fp #b0 #b00000000000 #b1100111010101101011001111101111111010000111110001101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
