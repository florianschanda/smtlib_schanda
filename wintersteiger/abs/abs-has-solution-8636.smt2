(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.919867590246132404985246466821990907192230224609375p489 {+ 4142715336662678 489 (3.06859e+147)}
; 1.919867590246132404985246466821990907192230224609375p489 | == 1.919867590246132404985246466821990907192230224609375p489
; [HW: 1.919867590246132404985246466821990907192230224609375p489] 

; mpf : + 4142715336662678 489
; mpfd: + 4142715336662678 489 (3.06859e+147) class: Pos. norm. non-zero
; hwf : + 4142715336662678 489 (3.06859e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101000 #b1110101101111100011100010100000011000001111010010110)))
(assert (= r (fp #b0 #b10111101000 #b1110101101111100011100010100000011000001111010010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
