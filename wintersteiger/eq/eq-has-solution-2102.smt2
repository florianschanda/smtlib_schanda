(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.85061180710851846953346466762013733386993408203125p-823 {- 3830815017530868 -823 (-3.30848e-248)}
; Y = 1.3690682669131193360811948878108523786067962646484375p-900 {+ 1662135709344199 -900 (1.61968e-271)}
; -1.85061180710851846953346466762013733386993408203125p-823 = 1.3690682669131193360811948878108523786067962646484375p-900 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011001000 #b1101100111000001101100100000010100011111010111110100)))
(assert (= y (fp #b0 #b00001111011 #b0101111001111011010000100000100001100010000111000111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
