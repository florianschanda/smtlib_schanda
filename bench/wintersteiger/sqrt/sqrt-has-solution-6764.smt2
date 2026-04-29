(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2527798402893071116892542704590596258640289306640625p-952 {+ 1138419194533697 -952 (3.29093e-287)}
; 1.2527798402893071116892542704590596258640289306640625p-952 S == 1.119276480718373267819742977735586464405059814453125p-476
; [HW: 1.119276480718373267819742977735586464405059814453125p-476] 

; mpf : + 537173514117330 -476
; mpfd: + 537173514117330 -476 (5.73666e-144) class: Pos. norm. non-zero
; hwf : + 537173514117330 -476 (5.73666e-144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000111 #b0100000010110110001011011111101100100001011101000001)))
(assert (= r (fp #b0 #b01000100011 #b0001111010001000111001110100011111011110000011010010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
