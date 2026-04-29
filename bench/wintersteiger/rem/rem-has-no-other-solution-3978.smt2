(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.306484643895436281724187210784293711185455322265625p-96 {- 1380284128042266 -96 (-1.64902e-029)}
; Y = -1.3408138976279406762159851496107876300811767578125p-223 {- 1534889342359880 -223 (-9.94671e-068)}
; -1.306484643895436281724187210784293711185455322265625p-96 % -1.3408138976279406762159851496107876300811767578125p-223 == -1.033559485632469687743650865741074085235595703125p-223
; [HW: -1.033559485632469687743650865741074085235595703125p-223] 

; mpf : - 151138486989136 -223
; mpfd: - 151138486989136 -223 (-7.66737e-068) class: Neg. norm. non-zero
; hwf : - 151138486989136 -223 (-7.66737e-068) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110011111 #b0100111001110101110001110001001001000001110100011010)))
(assert (= y (fp #b1 #b01100100000 #b0101011100111111100101000110000001010101100101001000)))
(assert (= r (fp #b0 #b01100011110 #x3aa0e68c49fe0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
