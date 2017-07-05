(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.608505239203111170098736693034879863262176513671875p232 {- 2740463968528126 232 (-1.11015e+070)}
; Y = -1.4272673419969035268906054625404067337512969970703125p-259 {- 1924241042204837 -259 (-1.54077e-078)}
; -1.608505239203111170098736693034879863262176513671875p232 > -1.4272673419969035268906054625404067337512969970703125p-259 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100111 #b1001101111000110111111111101010111010010011011111110)))
(assert (= y (fp #b1 #b01011111100 #b0110110101100001011001000111110010000110100010100101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
