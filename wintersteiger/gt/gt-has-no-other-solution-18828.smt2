(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7357298423105385065667860544635914266109466552734375p858 {- 3313432643675095 858 (-3.33594e+258)}
; Y = 1.407586700145151414886868224130012094974517822265625p185 {+ 1835607310894874 185 (6.90279e+055)}
; -1.7357298423105385065667860544635914266109466552734375p858 > 1.407586700145151414886868224130012094974517822265625p185 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011001 #b1011110001011000110010100111101101101010001111010111)))
(assert (= y (fp #b0 #b10010111000 #b0110100001010111100110100001101101101000011100011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
