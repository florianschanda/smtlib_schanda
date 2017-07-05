(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.824950861400262080991296897991560399532318115234375p440 {- 3715248392001190 440 (-5.18143e+132)}
; Y = 1.433578313827486017117962546763010323047637939453125p-930 {+ 1952663132589394 -930 (1.57952e-280)}
; -1.824950861400262080991296897991560399532318115234375p440 > 1.433578313827486017117962546763010323047637939453125p-930 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110110111 #b1101001100101111111110101100101010000101011010100110)))
(assert (= y (fp #b0 #b00001011101 #b0110111011111110111111010000011000100100110101010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
