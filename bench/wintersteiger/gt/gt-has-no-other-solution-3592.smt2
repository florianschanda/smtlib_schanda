(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.554904335892258959717082689167000353336334228515625p741 {+ 2499066960350650 741 (1.79858e+223)}
; Y = 1.9805622133782596616669025024748407304286956787109375p861 {+ 4416059618783919 861 (3.04519e+259)}
; 1.554904335892258959717082689167000353336334228515625p741 > 1.9805622133782596616669025024748407304286956787109375p861 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100100 #b1000111000001110001101011110011100010000110110111010)))
(assert (= y (fp #b0 #b11101011100 #b1111101100000110001000000000111000100111001010101111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
