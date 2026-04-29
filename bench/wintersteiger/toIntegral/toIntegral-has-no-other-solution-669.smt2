(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.42131958644072486919185394071973860263824462890625 332 {+ 1897454732498340 332 (1.24351e+100)}
; 1.42131958644072486919185394071973860263824462890625 332 I == 1.42131958644072486919185394071973860263824462890625 332
; [HW: 1.42131958644072486919185394071973860263824462890625 332] 

; mpf : + 1897454732498340 332
; mpfd: + 1897454732498340 332 (1.24351e+100) class: Pos. norm. non-zero
; hwf : + 1897454732498340 332 (1.24351e+100) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101001011 #b0110101111011011100110011011010011101101010110100100)))
(assert (= r (fp #b0 #b10101001011 #b0110101111011011100110011011010011101101010110100100)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
