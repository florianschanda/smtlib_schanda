(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.918444383005319497925711402785964310169219970703125p-923 {+ 4136305781063282 -923 (2.7056e-278)}
; 1.918444383005319497925711402785964310169219970703125p-923 S == 1.958797785890784126650032703764736652374267578125p-462
; [HW: 1.958797785890784126650032703764736652374267578125p-462] 

; mpf : + 4318041351261392 -462
; mpfd: + 4318041351261392 -462 (1.64487e-139) class: Pos. norm. non-zero
; hwf : + 4318041351261392 -462 (1.64487e-139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100100 #b1110101100011111001010111100110000110011111001110010)))
(assert (= r (fp #b0 #b01000110001 #b1111010101110011110001011000110111100000110011010000)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
