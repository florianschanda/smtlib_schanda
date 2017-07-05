(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4645707583120970429746421359595842659473419189453125p674 {- 2092240694021589 674 (-1.14796e+203)}
; Y = 1.5256219084512296912947704186080954968929290771484375p-417 {+ 2367190631038727 -417 (4.50753e-126)}
; -1.4645707583120970429746421359595842659473419189453125p674 > 1.5256219084512296912947704186080954968929290771484375p-417 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100001 #b0111011011101110000110111111010110100000110111010101)))
(assert (= y (fp #b0 #b01001011110 #b1000011010001111001010000100101011011011111100000111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
