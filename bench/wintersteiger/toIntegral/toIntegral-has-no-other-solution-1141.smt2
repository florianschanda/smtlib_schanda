(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.88324432706047684149552878807298839092254638671875 983 {+ 3977778822226668 983 (1.53955e+296)}
; 1.88324432706047684149552878807298839092254638671875 983 I == 1.88324432706047684149552878807298839092254638671875 983
; [HW: 1.88324432706047684149552878807298839092254638671875 983] 

; mpf : + 3977778822226668 983
; mpfd: + 3977778822226668 983 (1.53955e+296) class: Pos. norm. non-zero
; hwf : + 3977778822226668 983 (1.53955e+296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111010110 #b1110001000011100010011001101101100011010001011101100)))
(assert (= r (fp #b0 #b11111010110 #b1110001000011100010011001101101100011010001011101100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
