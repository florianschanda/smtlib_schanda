(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0595976228283372488903069097432307898998260498046875p-205 {- 268403831961867 -205 (-2.06059e-062)}
; Y = 1.127200282353611360264267204911448061466217041015625p-374 {+ 572859144209146 -374 (2.92943e-113)}
; -1.0595976228283372488903069097432307898998260498046875p-205 = 1.127200282353611360264267204911448061466217041015625p-374 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110010 #b0000111101000001110010100011000011110111100100001011)))
(assert (= y (fp #b0 #b01010001001 #b0010000010010000001100101001110011000000001011111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
