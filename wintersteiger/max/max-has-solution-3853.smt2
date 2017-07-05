(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8772175459246309703331689888727851212024688720703125p-410 {+ 3950636612949029 -410 (7.09931e-124)}
; Y = 1.664684681367054164269347893423400819301605224609375p647 {+ 2993473683323542 647 (9.72163e+194)}
; 1.8772175459246309703331689888727851212024688720703125p-410 M 1.664684681367054164269347893423400819301605224609375p647 == 1.664684681367054164269347893423400819301605224609375p647
; [HW: 1.664684681367054164269347893423400819301605224609375p647] 

; mpf : + 2993473683323542 647
; mpfd: + 2993473683323542 647 (9.72163e+194) class: Pos. norm. non-zero
; hwf : + 2993473683323542 647 (9.72163e+194) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100101 #b1110000010010001010101000011111100111001010000100101)))
(assert (= y (fp #b0 #b11010000110 #b1010101000101000110001100111100010011111101010010110)))
(assert (= r (fp #b0 #b11010000110 #b1010101000101000110001100111100010011111101010010110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
