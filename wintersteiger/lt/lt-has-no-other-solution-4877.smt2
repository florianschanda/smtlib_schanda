(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1141281009710535254697560958447866141796112060546875p402 {- 513987273005739 402 (-1.15078e+121)}
; Y = -1.7369192509792326095663383966893889009952545166015625p977 {- 3318789264112217 977 (-2.21863e+294)}
; -1.1141281009710535254697560958447866141796112060546875p402 < -1.7369192509792326095663383966893889009952545166015625p977 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010001 #b0001110100110111011111111100110100111001101010101011)))
(assert (= y (fp #b1 #b11111010000 #b1011110010100110101111010111001010111111101001011001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
