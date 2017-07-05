(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.260709134289459854016968165524303913116455078125p-560 {+ 1174129560038096 -560 (3.34055e-169)}
; 1.260709134289459854016968165524303913116455078125p-560 S == 1.1228130451190259098126489334390498697757720947265625p-280
; [HW: 1.1228130451190259098126489334390498697757720947265625p-280] 

; mpf : + 553100784234281 -280
; mpfd: + 553100784234281 -280 (5.77974e-085) class: Pos. norm. non-zero
; hwf : + 553100784234281 -280 (5.77974e-085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001111 #b0100001010111101110101010111010110001010101011010000)))
(assert (= r (fp #b0 #b01011100111 #b0001111101110000101011001111110001001110111100101001)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
