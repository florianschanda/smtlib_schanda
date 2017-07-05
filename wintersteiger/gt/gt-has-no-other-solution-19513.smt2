(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1242413213737159072280746840988285839557647705078125p640 {- 559533168642685 640 (-5.12928e+192)}
; Y = -1.5323857903842268424199346554814837872982025146484375p-717 {- 2397652447191751 -717 (-2.2226e-216)}
; -1.1242413213737159072280746840988285839557647705078125p640 > -1.5323857903842268424199346554814837872982025146484375p-717 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111111 #b0001111111001110010001110111110000011100101001111101)))
(assert (= y (fp #b1 #b00100110010 #b1000100001001010011011110110011010001110001011000111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
