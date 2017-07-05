(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.05427525332949034719831615802831947803497314453125p936 {+ 244434010670132 936 (6.12393e+281)}
; Y = -1.4162757142665889364963049956713803112506866455078125p847 {- 1874739151654397 847 (-1.32909e+255)}
; 1.05427525332949034719831615802831947803497314453125p936 < -1.4162757142665889364963049956713803112506866455078125p847 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100111 #b0000110111100100111110111010011000001000010000110100)))
(assert (= y (fp #b1 #b11101001110 #b0110101010010001000010111001001011100100110111111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
