(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9614193398024670766943700073170475661754608154296875p602 {+ 4329847780481179 602 (3.25558e+181)}
; Y = -1.3689704816292149747170014961739070713520050048828125p-803 {- 1661695323576045 -803 (-2.5663e-242)}
; 1.9614193398024670766943700073170475661754608154296875p602 > -1.3689704816292149747170014961739070713520050048828125p-803 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001011001 #b1111011000011111100100111110111000110001100010011011)))
(assert (= y (fp #b1 #b00011011100 #b0101111001110100110110010111011111001001011011101101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
