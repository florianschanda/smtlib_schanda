(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5160425210487964431393947961623780429363250732421875p-159 {- 2324048905502691 -159 (-2.07464e-048)}
; Y = -1.4835031185667322262133893673308193683624267578125p-855 {- 2177504464609608 -855 (-6.17507e-258)}
; -1.5160425210487964431393947961623780429363250732421875p-159 = -1.4835031185667322262133893673308193683624267578125p-855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101100000 #b1000010000011011010111001101011100111111111111100011)))
(assert (= y (fp #b1 #b00010101000 #b0111101111000110110111000100000111000010000101001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
