(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.823140901597901208930352368042804300785064697265625p-959 {- 3707097057709722 -959 (-3.74157e-289)}
; Y = 1.4362415281320510818119373652734793722629547119140625p-371 {+ 1964657183539041 -371 (2.98606e-112)}
; -1.823140901597901208930352368042804300785064697265625p-959 = 1.4362415281320510818119373652734793722629547119140625p-371 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001000000 #b1101001010111001010111001011010001011100111010011010)))
(assert (= y (fp #b0 #b01010001100 #b0110111110101101100001100101100001111011111101100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
