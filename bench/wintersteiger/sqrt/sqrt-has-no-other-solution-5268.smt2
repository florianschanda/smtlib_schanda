(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8241019326428802305173348941025324165821075439453125p101 {+ 3711425156765781 101 (4.62465e+030)}
; 1.8241019326428802305173348941025324165821075439453125p101 S == 1.9100271896718539199611086587538011372089385986328125p50
; [HW: 1.9100271896718539199611086587538011372089385986328125p50] 

; mpf : + 4098398112303181 50
; mpfd: + 4098398112303181 50 (2.1505e+015) class: Pos. norm. non-zero
; hwf : + 4098398112303181 50 (2.1505e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100100 #b1101001011111000010110000010000101000101100001010101)))
(assert (= r (fp #b0 #b10000110001 #b1110100011110111100010101011101000011100100001001101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
