(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6123519688787393278062154422514140605926513671875p831 {+ 2757788098861880 831 (2.3088e+250)}
; Y = -1.8679569901491543948424123300355859100818634033203125p3 {- 3908930777409349 3 (-14.9437)}
; 1.6123519688787393278062154422514140605926513671875p831 < -1.8679569901491543948424123300355859100818634033203125p3 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100111110 #b1001110011000011000110010011111111111001101100111000)))
(assert (= y (fp #b1 #b10000000010 #b1101111000110010011011011110011100000110011101000101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
