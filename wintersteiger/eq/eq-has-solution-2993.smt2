(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.277835751892311133559587688068859279155731201171875p-162 {- 1251260988692414 -162 (-2.18583e-049)}
; Y = -1.3558034911054062110480344927054829895496368408203125p578 {- 1602396469959429 578 (-1.34133e+174)}
; -1.277835751892311133559587688068859279155731201171875p-162 = -1.3558034911054062110480344927054829895496368408203125p578 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011101 #b0100011100100000001111100110110000001001011110111110)))
(assert (= y (fp #b1 #b11001000001 #b0101101100010101111100000000011000011001101100000101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
