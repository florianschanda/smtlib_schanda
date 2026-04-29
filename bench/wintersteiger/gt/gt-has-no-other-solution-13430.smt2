(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6602270045764588868308919700211845338344573974609375p-97 {- 2973398091790479 -97 (-1.04775e-029)}
; Y = 1.2389777966831536648584233262226916849613189697265625p-397 {+ 1076260316092073 -397 (3.83844e-120)}
; -1.6602270045764588868308919700211845338344573974609375p-97 > 1.2389777966831536648584233262226916849613189697265625p-397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110011110 #b1010100100000100101000110001000010010111100010001111)))
(assert (= y (fp #b0 #b01001110010 #b0011110100101101101001100001110100111001011010101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
