(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8810375724579746492537424273905344307422637939453125p-212 {+ 3967840483021141 -212 (2.85784e-064)}
; Y = -1.84841511649799628003165707923471927642822265625p294 {- 3820922002515872 294 (-5.88326e+088)}
; 1.8810375724579746492537424273905344307422637939453125p-212 = -1.84841511649799628003165707923471927642822265625p294 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100101011 #b1110000110001011101011011010100001000001000101010101)))
(assert (= y (fp #b1 #b10100100101 #b1101100100110001101110111010101011001010011110100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
