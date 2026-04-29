(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9145691289479394026074032808537594974040985107421875p-463 {- 4118853188334499 -463 (-8.03865e-140)}
; Y = -1.3938222645440365710101104923523962497711181640625p704 {- 1773617803850728 704 (-1.17307e+212)}
; -1.9145691289479394026074032808537594974040985107421875p-463 > -1.3938222645440365710101104923523962497711181640625p704 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110000 #b1110101000100001001100111101001011000011001110100011)))
(assert (= y (fp #b1 #b11010111111 #b0110010011010001100010010011001010100111001111101000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
