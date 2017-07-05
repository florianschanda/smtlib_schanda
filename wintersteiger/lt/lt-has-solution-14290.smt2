(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.395464775833056503273610360338352620601654052734375p-438 {- 1781015017079910 -438 (-1.96599e-132)}
; Y = -1.1101346118136772300744041785947047173976898193359375p-903 {- 496002196724671 -903 (-1.64168e-272)}
; -1.395464775833056503273610360338352620601654052734375p-438 < -1.1101346118136772300744041785947047173976898193359375p-903 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001001 #b0110010100111101001011011111011011101100010001100110)))
(assert (= y (fp #b1 #b00001111000 #b0001110000110001110010000010101111100101101110111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
