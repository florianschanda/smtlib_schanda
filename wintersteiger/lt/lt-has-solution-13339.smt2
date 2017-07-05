(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.660529025348878473522518106619827449321746826171875p-576 {- 2974758272428606 -576 (-6.71381e-174)}
; Y = 1.1875355677388548247819244352285750210285186767578125p711 {+ 844585112987421 711 (1.2793e+214)}
; -1.660529025348878473522518106619827449321746826171875p-576 < 1.1875355677388548247819244352285750210285186767578125p711 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111111 #b1010100100011000011011100010000111101110101000111110)))
(assert (= y (fp #b0 #b11011000110 #b0011000000000010010101001011101001000110011100011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
