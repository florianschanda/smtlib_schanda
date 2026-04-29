(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.6197162518139374132175589693360961973667144775390625p-1022 {- 2790953880744689 -1023 (-1.37891e-308)}
; Y = -1.4627216689517885672700003851787187159061431884765625p-551 {- 2083913135867529 -551 (-1.98442e-166)}
; -0.6197162518139374132175589693360961973667144775390625p-1022 < -1.4627216689517885672700003851787187159061431884765625p-551 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1001111010100101101110010110101001010111001011110001)))
(assert (= y (fp #b1 #b00111011000 #b0111011001110100111011010110001101001100011010001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
