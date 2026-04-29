(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.010912723438381011220599248190410435199737548828125p-34 {+ 49146537210690 -34 (5.88429e-011)}
; 1.010912723438381011220599248190410435199737548828125p-34 S == 1.005441556450886508855546708218753337860107421875p-17
; [HW: 1.005441556450886508855546708218753337860107421875p-17] 

; mpf : + 24506591604528 -17
; mpfd: + 24506591604528 -17 (7.67091e-006) class: Pos. norm. non-zero
; hwf : + 24506591604528 -17 (7.67091e-006) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111011101 #b0000001011001011001011010001111001000111001101000010)))
(assert (= r (fp #b0 #b01111101110 #b0000000101100100100111100010101011111110111100110000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
