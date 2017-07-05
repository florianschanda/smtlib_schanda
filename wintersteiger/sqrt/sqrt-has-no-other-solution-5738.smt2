(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5377267568617565274280423182062804698944091796875p-831 {+ 2421706021829752 -831 (1.07387e-250)}
; 1.5377267568617565274280423182062804698944091796875p-831 S == 1.753697098624364070218462074990384280681610107421875p-416
; [HW: 1.753697098624364070218462074990384280681610107421875p-416] 

; mpf : + 3394349972514910 -416
; mpfd: + 3394349972514910 -416 (1.03628e-125) class: Pos. norm. non-zero
; hwf : + 3394349972514910 -416 (1.03628e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000000 #b1000100110101000011101011111001011100111110001111000)))
(assert (= r (fp #b0 #b01001011111 #b1100000011110010010010110000010110101110100001011110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
