(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6970169620264881071847185012302361428737640380859375p738 {+ 3139085330453407 738 (2.45371e+222)}
; Y = 1.443002191431333347537702138652093708515167236328125p-1020 {+ 1995104504254466 -1020 (1.28431e-307)}
; 1.6970169620264881071847185012302361428737640380859375p738 > 1.443002191431333347537702138652093708515167236328125p-1020 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100001 #b1011001001101111101101000010000010101001001110011111)))
(assert (= y (fp #b0 #b00000000011 #b0111000101101000100101110111010001000001000000000010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
