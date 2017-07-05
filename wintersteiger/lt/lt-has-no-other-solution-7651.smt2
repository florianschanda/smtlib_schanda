(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3986023161737701769880004576407372951507568359375p-987 {- 1795145242589208 -987 (-1.06927e-297)}
; Y = 1.6807117058852274471547616485622711479663848876953125p41 {+ 3065652984971445 41 (3.69592e+012)}
; -1.3986023161737701769880004576407372951507568359375p-987 < 1.6807117058852274471547616485622711479663848876953125p41 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000100100 #b0110011000001010110011010010100000010011100000011000)))
(assert (= y (fp #b0 #b10000101000 #b1010111001000011000111110101001011001000000010110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
