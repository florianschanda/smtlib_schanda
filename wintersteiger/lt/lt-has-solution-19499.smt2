(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.54774100934819447417112314724363386631011962890625p-51 {- 2466806205596068 -51 (-6.87335e-016)}
; Y = -1.08983295387110246110751177184283733367919921875p977 {- 404571657579488 977 (-1.39208e+294)}
; -1.54774100934819447417112314724363386631011962890625p-51 < -1.08983295387110246110751177184283733367919921875p977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001100 #b1000110000111000110000010011100111010100000110100100)))
(assert (= y (fp #b1 #b11111010000 #b0001011011111111010010101101111011111010101111100000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
