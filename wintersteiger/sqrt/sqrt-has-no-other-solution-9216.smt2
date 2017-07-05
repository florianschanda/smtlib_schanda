(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2748568832610966961027543220552615821361541748046875p-443 {+ 1237845357034891 -443 (5.61272e-134)}
; 1.2748568832610966961027543220552615821361541748046875p-443 S == 1.596782316573612803267678827978670597076416015625p-222
; [HW: 1.596782316573612803267678827978670597076416015625p-222] 

; mpf : + 2687668618542224 -222
; mpfd: + 2687668618542224 -222 (2.36912e-067) class: Pos. norm. non-zero
; hwf : + 2687668618542224 -222 (2.36912e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000100 #b0100011001011101000001010100110010101111110110001011)))
(assert (= r (fp #b0 #b01100100001 #b1001100011000110101110011101010010000011110010010000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
