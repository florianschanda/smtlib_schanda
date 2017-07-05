(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7274648586067178346326045357272960245609283447265625p273 {+ 3276210466146345 273 (2.62179e+082)}
; 1.7274648586067178346326045357272960245609283447265625p273 S == 1.8587441236526978105558782772277481853961944580078125p136
; [HW: 1.8587441236526978105558782772277481853961944580078125p136] 

; mpf : + 3867439715288893 136
; mpfd: + 3867439715288893 136 (1.61919e+041) class: Pos. norm. non-zero
; hwf : + 3867439715288893 136 (1.61919e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010000 #b1011101000111011001000110001000010110100100000101001)))
(assert (= r (fp #b0 #b10010000111 #b1101101111010110101001111010011010111000011100111101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
