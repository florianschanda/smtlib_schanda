(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0653984474751805322512154816649854183197021484375p865 {- 294528423679832 865 (-2.62095e+260)}
; Y = 1.02328266982665727624635110259987413883209228515625p541 {+ 104855823155524 541 (7.36586e+162)}
; -1.0653984474751805322512154816649854183197021484375p865 > 1.02328266982665727624635110259987413883209228515625p541 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100000 #b0001000010111101111100111110000100011101011101011000)))
(assert (= y (fp #b0 #b11000011100 #b0000010111110101110110100110000101111000000101000100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
