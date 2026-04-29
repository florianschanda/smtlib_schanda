(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.985095781810777726406058718566782772541046142578125p840 {+ 4436476995887266 840 (1.45538e+253)}
; Y = 1.3456703036914572368942799585056491196155548095703125p-786 {+ 1556760650897893 -786 (3.30645e-237)}
; 1.985095781810777726406058718566782772541046142578125p840 = 1.3456703036914572368942799585056491196155548095703125p-786 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000111 #b1111110000101111001111001011011001001110000010100010)))
(assert (= y (fp #b0 #b00011101101 #b0101100001111101110110010101100110001101100111100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
