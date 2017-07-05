(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4834970930976283387536795999039895832538604736328125p1017 {+ 2177477328309197 1017 (2.08349e+306)}
; Y = -1.5790553941948479721446574330911971628665924072265625p-350 {- 2607833657522793 -350 (-6.88492e-106)}
; 1.4834970930976283387536795999039895832538604736328125p1017 = -1.5790553941948479721446574330911971628665924072265625p-350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111111000 #b0111101111000110011101110010101010010000101111001101)))
(assert (= y (fp #b1 #b01010100001 #b1001010000111100111110010110110010100011101001101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
