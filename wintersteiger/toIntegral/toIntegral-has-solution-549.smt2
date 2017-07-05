(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.230270365648013619619405289995484054088592529296875 434 {+ 1037045532926862 434 (5.45781e+130)}
; 1.230270365648013619619405289995484054088592529296875 434 I == 1.230270365648013619619405289995484054088592529296875 434
; [HW: 1.230270365648013619619405289995484054088592529296875 434] 

; mpf : + 1037045532926862 434
; mpfd: + 1037045532926862 434 (5.45781e+130) class: Pos. norm. non-zero
; hwf : + 1037045532926862 434 (5.45781e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110001 #b0011101011110010111111111010100110110010001110001110)))
(assert (= r (fp #b0 #b10110110001 #b0011101011110010111111111010100110110010001110001110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
