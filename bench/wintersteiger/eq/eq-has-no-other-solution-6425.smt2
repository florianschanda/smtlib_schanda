(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4498568125536996920033061542198993265628814697265625p-366 {+ 2025974973386921 -366 (9.64599e-111)}
; Y = 1.7681919904417835454069063416682183742523193359375p245 {+ 3459629161902616 245 (9.9972e+073)}
; 1.4498568125536996920033061542198993265628814697265625p-366 = 1.7681919904417835454069063416682183742523193359375p245 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010001 #b0111001100101001110100001110100111001101000010101001)))
(assert (= y (fp #b0 #b10011110100 #b1100010010101000001110101111001111111111001000011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
