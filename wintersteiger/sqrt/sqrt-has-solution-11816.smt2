(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.25359765071723483487176054040901362895965576171875p-683 {+ 1142102285272172 -683 (3.12371e-206)}
; 1.25359765071723483487176054040901362895965576171875p-683 S == 1.583412549348548470362629814189858734607696533203125p-342
; [HW: 1.583412549348548470362629814189858734607696533203125p-342] 

; mpf : + 2627456539849394 -342
; mpfd: + 2627456539849394 -342 (1.7674e-103) class: Pos. norm. non-zero
; hwf : + 2627456539849394 -342 (1.7674e-103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101010100 #b0100000011101011110001101001000000101100010001101100)))
(assert (= r (fp #b0 #b01010101001 #b1001010101011010100001100101101110000111001010110010)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
