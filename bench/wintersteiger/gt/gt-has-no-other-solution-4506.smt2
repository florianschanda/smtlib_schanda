(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7330382883803767679609109109151177108287811279296875p-474 {+ 3301310962398171 -474 (3.55296e-143)}
; Y = 1.529430197334696206468152013258077204227447509765625p434 {+ 2384341639435226 434 (6.78497e+130)}
; 1.7330382883803767679609109109151177108287811279296875p-474 > 1.529430197334696206468152013258077204227447509765625p434 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100101 #b1011101110101000011001011011001101001111001111011011)))
(assert (= y (fp #b0 #b10110110001 #b1000011110001000101111001100011100010001001111011010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
