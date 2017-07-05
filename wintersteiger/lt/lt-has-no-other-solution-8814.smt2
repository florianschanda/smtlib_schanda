(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.740719232947356420737605731119401752948760986328125p90 {+ 3335902861487874 90 (2.15491e+027)}
; Y = -1.0348745510521724089159079085220582783222198486328125p-159 {- 157061015123277 -159 (-1.41618e-048)}
; 1.740719232947356420737605731119401752948760986328125p90 < -1.0348745510521724089159079085220582783222198486328125p-159 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001011001 #b1011110110011111110001101001000100000110111100000010)))
(assert (= y (fp #b1 #b01101100000 #b0000100011101101100010011110000000111011010101001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
