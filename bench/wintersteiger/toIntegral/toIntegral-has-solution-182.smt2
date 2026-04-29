(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7440381122741357433625353223760612308979034423828125 460 {+ 3350849765187245 460 (5.19223e+138)}
; 1.7440381122741357433625353223760612308979034423828125 460 I == 1.7440381122741357433625353223760612308979034423828125 460
; [HW: 1.7440381122741357433625353223760612308979034423828125 460] 

; mpf : + 3350849765187245 460
; mpfd: + 3350849765187245 460 (5.19223e+138) class: Pos. norm. non-zero
; hwf : + 3350849765187245 460 (5.19223e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111001011 #b1011111001111001010010000001111100110001111010101101)))
(assert (= r (fp #b0 #b10111001011 #b1011111001111001010010000001111100110001111010101101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
