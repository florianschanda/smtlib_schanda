(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4319172878260728598576179138035513460636138916015625p345 {+ 1945182536508377 345 (1.02628e+104)}
; Y = -1.2977757760545263199247756347176618874073028564453125p1007 {- 1341062874079125 1007 (-1.77994e+303)}
; 1.4319172878260728598576179138035513460636138916015625p345 < -1.2977757760545263199247756347176618874073028564453125p1007 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101011000 #b0110111010010010001000011010000111001010001111011001)))
(assert (= y (fp #b1 #b11111101110 #b0100110000111011000010001000001110110001111110010101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
