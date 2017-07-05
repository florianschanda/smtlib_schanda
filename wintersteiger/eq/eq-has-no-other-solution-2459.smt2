(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.23145492364104836013893873314373195171356201171875p750 {+ 1042380307862892 750 (7.29315e+225)}
; Y = -1.59623263401089321433801160310395061969757080078125p632 {- 2685193068357588 632 (-2.84481e+190)}
; 1.23145492364104836013893873314373195171356201171875p750 = -1.59623263401089321433801160310395061969757080078125p632 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101101 #b0011101101000000101000010011111110001001010101101100)))
(assert (= y (fp #b1 #b11001110111 #b1001100010100010101100111010111111100010011111010100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
