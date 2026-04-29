(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.95914198309997278357741379295475780963897705078125p-125 {- 4319591477684436 -125 (-4.60592e-038)}
; -1.95914198309997278357741379295475780963897705078125p-125 | == 1.95914198309997278357741379295475780963897705078125p-125
; [HW: 1.95914198309997278357741379295475780963897705078125p-125] 

; mpf : + 4319591477684436 -125
; mpfd: + 4319591477684436 -125 (4.60592e-038) class: Pos. norm. non-zero
; hwf : + 4319591477684436 -125 (4.60592e-038) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110000010 #b1111010110001010010101000011100110100010100011010100)))
(assert (= r (fp #b0 #b01110000010 #b1111010110001010010101000011100110100010100011010100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
