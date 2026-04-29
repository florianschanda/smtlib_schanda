(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9203633015200551881207502447068691253662109375p-785 {- 4144947821771200 -785 (-9.43706e-237)}
; Y = -1.5607903754256804429445537607534788548946380615234375p-85 {- 2525575325800055 -85 (-4.03455e-026)}
; -1.9203633015200551881207502447068691253662109375p-785 < -1.5607903754256804429445537607534788548946380615234375p-85 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011101110 #b1110101110011100111011011110100001110111100111000000)))
(assert (= y (fp #b1 #b01110101010 #b1000111110001111111101010100001001011101011001110111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
