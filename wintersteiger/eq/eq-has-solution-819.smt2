(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7744995787815665000408671403420157730579376220703125p4 {+ 3488036014399269 4 (28.392)}
; Y = -1.0932820750866856229777113185264170169830322265625p787 {- 420105118600744 787 (-8.89895e+236)}
; 1.7744995787815665000408671403420157730579376220703125p4 = -1.0932820750866856229777113185264170169830322265625p787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000011 #b1100011001000101100110101011100110100001111100100101)))
(assert (= y (fp #b1 #b11100010010 #b0001011111100001010101011000010111001100111000101000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
