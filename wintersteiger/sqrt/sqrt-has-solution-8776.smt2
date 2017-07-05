(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8840795801424856659167517136665992438793182373046875p876 {+ 3981540467695563 876 (9.49239e+263)}
; 1.8840795801424856659167517136665992438793182373046875p876 S == 1.3726177837047301988349090606789104640483856201171875p438
; [HW: 1.3726177837047301988349090606789104640483856201171875p438] 

; mpf : + 1678121311844243 438
; mpfd: + 1678121311844243 438 (9.74289e+131) class: Pos. norm. non-zero
; hwf : + 1678121311844243 438 (9.74289e+131) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101101011 #b1110001001010011000010100001001111000101111111001011)))
(assert (= r (fp #b0 #b10110110101 #b0101111101100011111000010000101011101011011110010011)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
