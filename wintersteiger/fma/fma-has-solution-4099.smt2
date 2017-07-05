(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7279163032431050783799264536355622112751007080078125p-768 {- 3278243592042557 -768 (-1.11298e-231)}
; Y = -1.00808506935785668900962264160625636577606201171875p871 {- 36411915347308 871 (-1.58717e+262)}
; Z = 1.232318687190552264354437284055165946483612060546875p-183 {+ 1046270353062574 -183 (1.00516e-055)}
; -1.7279163032431050783799264536355622112751007080078125p-768 x -1.00808506935785668900962264160625636577606201171875p871 1.232318687190552264354437284055165946483612060546875p-183 == 1.741886626399396842401756657636724412441253662109375p103
; [HW: 1.741886626399396842401756657636724412441253662109375p103] 

; mpf : + 3341160334203478 103
; mpfd: + 3341160334203478 103 (1.76648e+031) class: Pos. norm. non-zero
; hwf : + 3341160334203478 103 (1.76648e+031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011111111 #b1011101001011000101110010000110010100111100000111101)))
(assert (= y (fp #b1 #b11101100110 #b0000001000010001110111001111010001111010010101101100)))
(assert (= z (fp #b0 #b01101001000 #b0011101101111001001111001100101110111011101010101110)))
(assert (= r (fp #b0 #b10001100110 #b1011110111101100010010000010110110111001101001010110)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
