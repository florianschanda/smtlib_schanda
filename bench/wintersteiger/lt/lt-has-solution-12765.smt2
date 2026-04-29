(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3335574373817606907977051378111355006694793701171875p56 {+ 1502209150699155 56 (9.60929e+016)}
; Y = 1.7310099674429135774289534310810267925262451171875p-890 {+ 3292176216980024 -890 (2.09702e-268)}
; 1.3335574373817606907977051378111355006694793701171875p56 < 1.7310099674429135774289534310810267925262451171875p-890 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000110111 #b0101010101100100000001010010110011100100011010010011)))
(assert (= y (fp #b0 #b00010000101 #b1011101100100011011110000001111100110111101000111000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
