(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.315001673846178054105848787003196775913238525390625p98 {+ 1418641420954730 98 (4.16741e+029)}
; Y = 1.7475753151444985977747137440019287168979644775390625p-864 {+ 3366779910716145 -864 (1.42076e-260)}
; 1.315001673846178054105848787003196775913238525390625p98 > 1.7475753151444985977747137440019287168979644775390625p-864 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001100001 #b0101000010100011111100110001111101011010110001101010)))
(assert (= y (fp #b0 #b00010011111 #b1011111101100001000110001000100111010111101011110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
