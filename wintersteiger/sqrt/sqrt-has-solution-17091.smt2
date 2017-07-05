(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5663362994552991747099213171168230473995208740234375p612 {+ 2550551947193271 612 (2.66221e+184)}
; 1.5663362994552991747099213171168230473995208740234375p612 S == 1.2515335790362553947119295116863213479518890380859375p306
; [HW: 1.2515335790362553947119295116863213479518890380859375p306] 

; mpf : + 1132806532818847 306
; mpfd: + 1132806532818847 306 (1.63163e+092) class: Pos. norm. non-zero
; hwf : + 1132806532818847 306 (1.63163e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100011 #b1001000011111011011010100110110010110010101110110111)))
(assert (= r (fp #b0 #b10100110001 #b0100000001100100100000010010111111001110011110011111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
