(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6483459288120749786088481414481066167354583740234375p-660 {+ 2919890483405239 -660 (3.44549e-199)}
; Y = 1.064658420700322238872104207985103130340576171875p-238 {+ 291195639372336 -238 (2.4103e-072)}
; 1.6483459288120749786088481414481066167354583740234375p-660 - 1.064658420700322238872104207985103130340576171875p-238 == -1.064658420700322238872104207985103130340576171875p-238
; [HW: -1.064658420700322238872104207985103130340576171875p-238] 

; mpf : - 291195639372336 -238
; mpfd: - 291195639372336 -238 (-2.4103e-072) class: Neg. norm. non-zero
; hwf : - 291195639372336 -238 (-2.4103e-072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101101011 #b1010010111111001111111111011000010111110000110110111)))
(assert (= y (fp #b0 #b01100010001 #b0001000010001101011101000100101001010001101000110000)))
(assert (= r (fp #b1 #b01100010001 #b0001000010001101011101000100101001010001101000110000)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
