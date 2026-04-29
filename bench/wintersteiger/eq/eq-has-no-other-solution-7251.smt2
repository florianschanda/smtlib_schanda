(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.8110344413840504529389363597147166728973388671875p-1022 {- 3652574408001848 -1023 (-1.80461e-308)}
; Y = -1.1949658049132556580929076517350040376186370849609375p-349 {- 878047926357327 -349 (-1.04205e-105)}
; -0.8110344413840504529389363597147166728973388671875p-1022 = -1.1949658049132556580929076517350040376186370849609375p-349 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b1100111110011111111101000000000110101100100100111000)))
(assert (= y (fp #b1 #b01010100010 #b0011000111101001010001110110101111110000110101001111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
