(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.10124413366334916730693294084630906581878662109375p752 {+ 455963042639708 752 (2.6088e+226)}
; Y = -1.74647951963303427191931405104696750640869140625p195 {- 3361844886459040 195 (-8.77026e+058)}
; 1.10124413366334916730693294084630906581878662109375p752 = -1.74647951963303427191931405104696750640869140625p195 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101111 #b0001100111101011001000101011001011111110111101011100)))
(assert (= y (fp #b1 #b10011000010 #b1011111100011001010010000010001111110101001010100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
