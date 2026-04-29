(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2811621602968015221080122501007281243801116943359375 454 {+ 1266241800343359 454 (5.95967e+136)}
; 1.2811621602968015221080122501007281243801116943359375 454 I == 1.2811621602968015221080122501007281243801116943359375 454
; [HW: 1.2811621602968015221080122501007281243801116943359375 454] 

; mpf : + 1266241800343359 454
; mpfd: + 1266241800343359 454 (5.95967e+136) class: Pos. norm. non-zero
; hwf : + 1266241800343359 454 (5.95967e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000101 #b0100011111111010001111100100101101011000111100111111)))
(assert (= r (fp #b0 #b10111000101 #b0100011111111010001111100100101101011000111100111111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
