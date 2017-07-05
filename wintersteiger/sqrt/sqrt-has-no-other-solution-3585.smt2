(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2798188976262132587891073853825218975543975830078125p-486 {+ 1260192283080637 -486 (6.40576e-147)}
; 1.2798188976262132587891073853825218975543975830078125p-486 S == 1.131290810369382171529650804586708545684814453125p-243
; [HW: 1.131290810369382171529650804586708545684814453125p-243] 

; mpf : + 591281244656720 -243
; mpfd: + 591281244656720 -243 (8.0036e-074) class: Pos. norm. non-zero
; hwf : + 591281244656720 -243 (8.0036e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011001 #b0100011110100010001101100001011000011011011110111101)))
(assert (= r (fp #b0 #b01100001100 #b0010000110011100010001100100100011001101010001010000)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
