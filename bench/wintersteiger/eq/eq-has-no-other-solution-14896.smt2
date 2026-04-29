(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7983941229486684054705847302102483808994293212890625p-556 {+ 3595647474606417 -556 (7.62443e-168)}
; Y = 1.2246038310279203642494394443929195404052734375p400 {+ 1011525729723328 400 (3.16223e+120)}
; 1.7983941229486684054705847302102483808994293212890625p-556 = 1.2246038310279203642494394443929195404052734375p400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111010011 #b1100110001100011100011101010011101100010000101010001)))
(assert (= y (fp #b0 #b10110001111 #b0011100101111111101000101111110011010010001111000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
