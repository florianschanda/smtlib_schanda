(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9646893864049810307648158413940109312534332275390625p-734 {- 4344574761141745 -734 (-2.17409e-221)}
; Y = 1.5072648386665259412353634616010822355747222900390625p341 {+ 2284517738396721 341 (6.75178e+102)}
; -1.9646893864049810307648158413940109312534332275390625p-734 > 1.5072648386665259412353634616010822355747222900390625p341 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100100001 #b1111011011110101111000100011010101101000010111110001)))
(assert (= y (fp #b0 #b10101010100 #b1000000111011100000110111100010001111011110000110001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
