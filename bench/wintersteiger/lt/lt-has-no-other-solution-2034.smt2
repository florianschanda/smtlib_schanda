(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3271612177960674383569994461140595376491546630859375p-981 {- 1473403138556447 -981 (-6.49379e-296)}
; Y = 1.00384512383146873304440305219031870365142822265625p105 {+ 17316898254596 105 (4.07208e+031)}
; -1.3271612177960674383569994461140595376491546630859375p-981 < 1.00384512383146873304440305219031870365142822265625p105 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101010 #b0101001111000000110101100110101011110100001000011111)))
(assert (= y (fp #b0 #b10001101000 #b0000000011111011111111100111100100011010111100000100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
