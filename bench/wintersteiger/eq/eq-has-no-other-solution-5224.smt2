(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.200058278382441390164103722781874239444732666015625p-437 {+ 900982387975546 -437 (3.38138e-132)}
; Y = 1.069698483424824875243075439357198774814605712890625p388 {+ 313894063980330 388 (6.74372e+116)}
; 1.200058278382441390164103722781874239444732666015625p-437 = 1.069698483424824875243075439357198774814605712890625p388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001010 #b0011001100110111000001001111001011110010010101111010)))
(assert (= y (fp #b0 #b10110000011 #b0001000111010111110000101000001011100011111100101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
