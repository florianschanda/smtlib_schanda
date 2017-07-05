(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.833006085822458164358295107376761734485626220703125p-826 {+ 3751525897707378 -826 (4.09626e-249)}
; 1.833006085822458164358295107376761734485626220703125p-826 S == 1.353885551227450800837459610193036496639251708984375p-413
; [HW: 1.353885551227450800837459610193036496639251708984375p-413] 

; mpf : + 1593758836639750 -413
; mpfd: + 1593758836639750 -413 (6.4002e-125) class: Pos. norm. non-zero
; hwf : + 1593758836639750 -413 (6.4002e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011000101 #b1101010100111111111000110000011111111001111101110010)))
(assert (= r (fp #b0 #b01001100010 #b0101101010011000001111100101010100001100100000000110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
