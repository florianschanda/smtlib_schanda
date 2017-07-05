(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0680764097250106114955769953667186200618743896484375p-316 {- 306588893470279 -316 (-8.00062e-096)}
; Y = -1.64384223245165284055246956995688378810882568359375p225 {- 2899607638154652 225 (-8.86358e+067)}
; -1.0680764097250106114955769953667186200618743896484375p-316 + -1.64384223245165284055246956995688378810882568359375p225 == -1.64384223245165284055246956995688378810882568359375p225
; [HW: -1.64384223245165284055246956995688378810882568359375p225] 

; mpf : - 2899607638154652 225
; mpfd: - 2899607638154652 225 (-8.86358e+067) class: Neg. norm. non-zero
; hwf : - 2899607638154652 225 (-8.86358e+067) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000011 #b0001000101101101011101001010000101100101111001000111)))
(assert (= y (fp #b1 #b10011100000 #b1010010011010010110110000011010000101001110110011100)))
(assert (= r (fp #b1 #b10011100000 #b1010010011010010110110000011010000101001110110011100)))
(assert (= (fp.add roundNearestTiesToEven x y) r))
(check-sat)
(exit)
