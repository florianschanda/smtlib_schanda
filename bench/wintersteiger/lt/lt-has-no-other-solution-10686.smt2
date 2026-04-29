(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8081322303064768508562565330066718161106109619140625p1009 {+ 3639504011274337 1009 (9.91964e+303)}
; Y = 1.4950265274598526499261197386658750474452972412109375p-468 {+ 2229401284606703 -468 (1.9616e-141)}
; 1.8081322303064768508562565330066718161106109619140625p1009 < 1.4950265274598526499261197386658750474452972412109375p-468 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110000 #b1100111011100001110000001111110000000010100001100001)))
(assert (= y (fp #b0 #b01000101011 #b0111111010111010000011101111101000010111101011101111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
