(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.313737045188361651781860928167589008808135986328125p-201 {- 1412946039802626 -201 (-4.0877e-061)}
; Y = 1.985721252615730403334737275145016610622406005859375p986 {+ 4439293865971382 986 (1.29866e+297)}
; -1.313737045188361651781860928167589008808135986328125p-201 < 1.985721252615730403334737275145016610622406005859375p986 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110110 #b0101000001010001000100100010110010100000101100000010)))
(assert (= y (fp #b0 #b11111011001 #b1111110001011000001110100101111011110100111010110110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
