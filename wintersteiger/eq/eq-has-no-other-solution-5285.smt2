(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1052523562014611169246336430660448968410491943359375p833 {+ 474014472168767 833 (6.33064e+250)}
; Y = -1.2969539317166709491147003063815645873546600341796875p-94 {- 1337361616225403 -94 (-6.54794e-029)}
; 1.1052523562014611169246336430660448968410491943359375p833 = -1.2969539317166709491147003063815645873546600341796875p-94 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000000 #b0001101011110001110100011000001110110110010100111111)))
(assert (= y (fp #b1 #b01110100001 #b0100110000000101001011000100000100100100010001111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
