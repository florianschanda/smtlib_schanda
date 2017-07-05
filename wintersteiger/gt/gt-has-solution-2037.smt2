(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.82318822697496774054570778389461338520050048828125p-576 {- 3707310192260244 -576 (-7.37147e-174)}
; Y = -1.3806440908265649181174694604123942553997039794921875p-691 {- 1714268585607299 -691 (-1.34386e-208)}
; -1.82318822697496774054570778389461338520050048828125p-576 > -1.3806440908265649181174694604123942553997039794921875p-691 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111111 #b1101001010111100011101101011000101001111010010010100)))
(assert (= y (fp #b1 #b00101001100 #b0110000101110001111001000010000110000100000010000011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
