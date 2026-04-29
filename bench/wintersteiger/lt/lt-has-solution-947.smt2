(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6538109122537714146261578207486309111118316650390625p227 {+ 2944502580796849 227 (3.56693e+068)}
; Y = -1.4264664248285736647403609822504222393035888671875p-168 {- 1920634031943992 -168 (-3.81261e-051)}
; 1.6538109122537714146261578207486309111118316650390625p227 < -1.4264664248285736647403609822504222393035888671875p-168 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100010 #b1010011101100000001001101110010111100101110110110001)))
(assert (= y (fp #b1 #b01101010111 #b0110110100101100111001110101001101111011000100111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
