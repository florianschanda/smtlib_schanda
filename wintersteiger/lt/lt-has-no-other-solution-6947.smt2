(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1477108467969554528309572560829110443592071533203125p174 {- 665230514593349 174 (-2.74822e+052)}
; Y = -1.6756892177811522071095851060817949473857879638671875p57 {- 3043033709417459 57 (-2.41492e+017)}
; -1.1477108467969554528309572560829110443592071533203125p174 < -1.6756892177811522071095851060817949473857879638671875p57 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010101101 #b0010010111010000011000001100100001000001111001000101)))
(assert (= y (fp #b1 #b10000111000 #b1010110011111001111101111111010010100001001111110011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
