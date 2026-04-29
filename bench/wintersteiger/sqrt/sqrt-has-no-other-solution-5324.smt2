(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6162165940175119427379968328750692307949066162109375p-73 {+ 2775192823196783 -73 (1.71124e-022)}
; 1.6162165940175119427379968328750692307949066162109375p-73 S == 1.7978968791438021401773994512041099369525909423828125p-37
; [HW: 1.7978968791438021401773994512041099369525909423828125p-37] 

; mpf : + 3593408087592109 -37
; mpfd: + 3593408087592109 -37 (1.30814e-011) class: Pos. norm. non-zero
; hwf : + 3593408087592109 -37 (1.30814e-011) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110110 #b1001110111000000010111101110011010001110110001101111)))
(assert (= r (fp #b0 #b01111011010 #b1100110001000010111110000100100110000000110010101101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
