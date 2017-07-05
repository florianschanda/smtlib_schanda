(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.197884246483434278474078382714651525020599365234375 791 {+ 891191418725286 791 (1.56006e+238)}
; 1.197884246483434278474078382714651525020599365234375 791 I == 1.197884246483434278474078382714651525020599365234375 791
; [HW: 1.197884246483434278474078382714651525020599365234375 791] 

; mpf : + 891191418725286 791
; mpfd: + 891191418725286 791 (1.56006e+238) class: Pos. norm. non-zero
; hwf : + 891191418725286 791 (1.56006e+238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010110 #b0011001010101000100010101011111100001010001110100110)))
(assert (= r (fp #b0 #b11100010110 #b0011001010101000100010101011111100001010001110100110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
