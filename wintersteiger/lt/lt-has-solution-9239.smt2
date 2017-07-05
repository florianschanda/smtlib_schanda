(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.397494908423790871410119507345370948314666748046875p-764 {- 1790157921459054 -764 (-1.44024e-230)}
; Y = 1.0572837330824993440359094165614806115627288818359375p-933 {+ 257982998964735 -933 (1.45615e-281)}
; -1.397494908423790871410119507345370948314666748046875p-764 < 1.0572837330824993440359094165614806115627288818359375p-933 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100000011 #b0110010111000010001110011111000000000001101101101110)))
(assert (= y (fp #b0 #b00001011010 #b0000111010101010001001011001000000101110100111111111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
