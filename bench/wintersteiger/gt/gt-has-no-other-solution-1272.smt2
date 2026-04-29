(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9477784242217188737100741491303779184818267822265625p-762 {+ 4268414558154729 -762 (8.0294e-230)}
; Y = -1.9335114369476802398395420823362655937671661376953125p-908 {- 4204161759583669 -908 (-8.93533e-274)}
; 1.9477784242217188737100741491303779184818267822265625p-762 > -1.9335114369476802398395420823362655937671661376953125p-908 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000101 #b1111001010100001100110110101011111100010111111101001)))
(assert (= y (fp #b1 #b00001110011 #b1110111011111010100110110000010000100001110110110101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
