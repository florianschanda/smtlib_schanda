(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0936349377318652642543383990414440631866455078125p-334 {+ 421694270678088 -334 (3.12503e-101)}
; Y = -1.956134460590794876821973957703448832035064697265625p658 {- 4306046800432794 658 (-2.33957e+198)}
; 1.0936349377318652642543383990414440631866455078125p-334 > -1.956134460590794876821973957703448832035064697265625p658 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110001 #b0001011111111000011101011001001101010010010001001000)))
(assert (= y (fp #b1 #b11010010001 #b1111010011000101001110100101111011010000111010011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
