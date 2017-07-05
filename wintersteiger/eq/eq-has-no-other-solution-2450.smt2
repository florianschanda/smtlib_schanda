(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.930399785690016134509505718597210943698883056640625p380 {- 4190148128139146 380 (-4.75385e+114)}
; Y = -1.184957400226232859807851127698086202144622802734375p445 {- 832974078738278 445 (-1.07659e+134)}
; -1.930399785690016134509505718597210943698883056640625p380 = -1.184957400226232859807851127698086202144622802734375p445 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b1110111000101110101011100010101110111110011110001010)))
(assert (= y (fp #b1 #b10110111100 #b0010111101011001010111100100000100011111111101100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
