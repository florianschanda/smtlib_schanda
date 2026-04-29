(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8305646895166514109831723544630222022533416748046875p51 {- 3740530826214283 51 (-4.12207e+015)}
; Y = 1.4271713825670053754635091536329127848148345947265625p-856 {+ 1923808879352105 -856 (2.9703e-258)}
; -1.8305646895166514109831723544630222022533416748046875p51 = 1.4271713825670053754635091536329127848148345947265625p-856 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000110010 #b1101010010011111111000110011001010101111101110001011)))
(assert (= y (fp #b0 #b00010100111 #b0110110101011011000110101000110111101001100100101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
