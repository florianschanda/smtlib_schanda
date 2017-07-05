(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6108315703934235063599089698982425034046173095703125p-3 {- 2750940832809957 -3 (-0.201354)}
; Y = 1.9402683040140378256666053857770748436450958251953125p-854 {+ 4234591983585909 -854 (1.61527e-257)}
; Z = 1.3435622166844918279338116917642764747142791748046875p-920 {+ 1547266671038859 -920 (1.51587e-277)}
; -1.6108315703934235063599089698982425034046173095703125p-3 x 1.9402683040140378256666053857770748436450958251953125p-854 1.3435622166844918279338116917642764747142791748046875p-920 == -1.5627227195697586115130661710281856358051300048828125p-856
; [HW: -1.5627227195697586115130661710281856358051300048828125p-856] 

; mpf : - 2534277830167277 -856
; mpfd: - 2534277830167277 -856 (-3.25241e-258) class: Neg. norm. non-zero
; hwf : - 2534277830167277 -856 (-3.25241e-258) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111100 #b1001110001011111011101010011001000110100001111100101)))
(assert (= y (fp #b0 #b00010101001 #b1111000010110101011011000110111100110100101001110101)))
(assert (= z (fp #b0 #b00001100111 #b0101011111110011101100011000010011001101000110001011)))
(assert (= r (fp #b1 #b00010100111 #b1001000000001110100110001001110101000100101011101101)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
