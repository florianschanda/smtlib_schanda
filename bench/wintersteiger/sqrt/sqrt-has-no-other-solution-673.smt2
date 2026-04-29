(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.100116175620114322697418174357153475284576416015625p-303 {+ 450883171216506 -303 (6.75072e-092)}
; 1.100116175620114322697418174357153475284576416015625p-303 S == 1.483318020938270809239156733383424580097198486328125p-152
; [HW: 1.483318020938270809239156733383424580097198486328125p-152] 

; mpf : + 2176670858999042 -152
; mpfd: + 2176670858999042 -152 (2.59821e-046) class: Pos. norm. non-zero
; hwf : + 2176670858999042 -152 (2.59821e-046) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010000 #b0001100110100001001101101011010000010110110001111010)))
(assert (= r (fp #b0 #b01101100111 #b0111101110111010101110101101010101111111010100000010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
