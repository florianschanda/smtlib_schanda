(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.635854737238458422865505781373940408229827880859375p469 {- 2863635157688886 469 (-2.49352e+141)}
; Y = -1.570536576115301841127802617847919464111328125p-576 {- 2569468311594112 -576 (-6.34995e-174)}
; -1.635854737238458422865505781373940408229827880859375p469 = -1.570536576115301841127802617847919464111328125p-576 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010100 #b1010001011000111011000000100010101110010001000110110)))
(assert (= y (fp #b1 #b00110111111 #b1001001000001110101011110101111110010110010010000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
