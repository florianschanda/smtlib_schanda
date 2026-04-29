(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.944945603066802863878592688706703484058380126953125p-866 {- 4255656665857042 -866 (-3.95304e-261)}
; -1.944945603066802863878592688706703484058380126953125p-866 | == 1.944945603066802863878592688706703484058380126953125p-866
; [HW: 1.944945603066802863878592688706703484058380126953125p-866] 

; mpf : + 4255656665857042 -866
; mpfd: + 4255656665857042 -866 (3.95304e-261) class: Pos. norm. non-zero
; hwf : + 4255656665857042 -866 (3.95304e-261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011101 #b1111000111100111111101000111110110101011110000010010)))
(assert (= r (fp #b0 #b00010011101 #b1111000111100111111101000111110110101011110000010010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
