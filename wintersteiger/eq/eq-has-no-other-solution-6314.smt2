(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7241913164327973273515226537710987031459808349609375p-571 {- 3261467742831695 -571 (-2.23079e-172)}
; Y = -1.1416755298104848126428123578079976141452789306640625p913 {- 638049863262017 913 (-7.90549e+274)}
; -1.7241913164327973273515226537710987031459808349609375p-571 = -1.1416755298104848126428123578079976141452789306640625p913 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111000100 #b1011100101100100100110100010010000100000010001001111)))
(assert (= y (fp #b1 #b11110010000 #b0010010001000100110110001111011100101101111101000001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
