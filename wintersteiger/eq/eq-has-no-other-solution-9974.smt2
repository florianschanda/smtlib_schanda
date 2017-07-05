(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.83047908599435427134949350147508084774017333984375p-295 {+ 3740145302223164 -295 (2.87552e-089)}
; Y = -1.25937305005691513315468910150229930877685546875p-20 {- 1168112371586272 -20 (-1.20103e-006)}
; 1.83047908599435427134949350147508084774017333984375p-295 = -1.25937305005691513315468910150229930877685546875p-20 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011000 #b1101010010011010010001110000001001011011100100111100)))
(assert (= y (fp #b1 #b01111101011 #b0100001001100110010001011010111101110101010011100000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
