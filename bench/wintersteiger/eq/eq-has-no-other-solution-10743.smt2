(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3391383252187782915143543505109846591949462890625p-659 {- 1527343235082344 -659 (-5.59833e-199)}
; Y = -1.6238694818996555202517129146144725382328033447265625p-575 {- 2809658366211113 -575 (-1.31312e-173)}
; -1.3391383252187782915143543505109846591949462890625p-659 = -1.6238694818996555202517129146144725382328033447265625p-575 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101100 #b0101011011010001110001001110111110100010100001101000)))
(assert (= y (fp #b1 #b00111000000 #b1001111110110101111010010000110110111011010000101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
