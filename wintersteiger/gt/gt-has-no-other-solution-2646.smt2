(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.704525338680500379240356778609566390514373779296875p-698 {- 3172900052754574 -698 (-1.29618e-210)}
; Y = 1.9448162456603841352631434347131289541721343994140625p338 {+ 4255074091889697 338 (1.08897e+102)}
; -1.704525338680500379240356778609566390514373779296875p-698 > 1.9448162456603841352631434347131289541721343994140625p338 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000101 #b1011010001011011110001011100100011010110000010001110)))
(assert (= y (fp #b0 #b10101010001 #b1111000111011111011110100011101111010111010000100001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
