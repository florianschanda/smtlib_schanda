(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.746809877462645044232658619876019656658172607421875p822 {+ 3363332685857374 822 (4.88542e+247)}
; Y = 0.336185244774253266797359174233861267566680908203125p-1022 {+ 1514043743092786 -1023 (7.48037e-309)}
; 1.746809877462645044232658619876019656658172607421875p822 = 0.336185244774253266797359174233861267566680908203125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100110101 #b1011111100101110111011101010000000001000001001011110)))
(assert (= y (fp #b0 #b00000000000 #b0101011000010000001111000111011110110100000000110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
