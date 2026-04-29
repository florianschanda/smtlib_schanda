(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.038804345034750387100075386115349829196929931640625p-483 {- 174759233838858 -483 (-4.15955e-146)}
; Y = 1.05203915694645644407501094974577426910400390625p602 {+ 234363527832736 602 (1.74618e+181)}
; -1.038804345034750387100075386115349829196929931640625p-483 < 1.05203915694645644407501094974577426910400390625p602 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000011100 #b0000100111101111000101001110000011011101111100001010)))
(assert (= y (fp #b0 #b11001011001 #b0000110101010010011100000010110100110010010010100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
