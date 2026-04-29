(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1132935446357723474619660919415764510631561279296875p-159 {+ 510228765405147 -159 (1.52349e-048)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.1132935446357723474619660919415764510631561279296875p-159 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101100000 #b0001110100000000110011100100010100001110111111011011)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
