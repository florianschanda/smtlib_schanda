(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7771724319628721122654724240419454872608184814453125p309 {- 3500073474990613 309 (-1.85352e+093)}
; Y = -1.885813047946520715214546726201660931110382080078125p-409 {- 3989347312651874 -409 (-1.42636e-123)}
; -1.7771724319628721122654724240419454872608184814453125p309 < -1.885813047946520715214546726201660931110382080078125p-409 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100110100 #b1100011011110100110001011100001010100010001000010101)))
(assert (= y (fp #b1 #b01001100110 #b1110001011000100101001001101011101001100111001100010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
