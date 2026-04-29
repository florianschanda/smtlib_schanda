(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0473862039647396926511646597646176815032958984375 522 {+ 213408490518104 522 (1.43802e+157)}
; 1.0473862039647396926511646597646176815032958984375 522 I == 1.0473862039647396926511646597646176815032958984375 522
; [HW: 1.0473862039647396926511646597646176815032958984375 522] 

; mpf : + 213408490518104 522
; mpfd: + 213408490518104 522 (1.43802e+157) class: Pos. norm. non-zero
; hwf : + 213408490518104 522 (1.43802e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000001001 #b0000110000100001100000001001010001001111011001011000)))
(assert (= r (fp #b0 #b11000001001 #b0000110000100001100000001001010001001111011001011000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
