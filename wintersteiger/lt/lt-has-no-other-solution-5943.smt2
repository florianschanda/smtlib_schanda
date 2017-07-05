(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3711052161604992960519666667096316814422607421875p-895 {- 1671309313215672 -895 (-5.19068e-270)}
; Y = 1.0674172995457447132849893023376353085041046142578125p-167 {+ 303620525112541 -167 (5.70591e-051)}
; -1.3711052161604992960519666667096316814422607421875p-895 < 1.0674172995457447132849893023376353085041046142578125p-167 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010000000 #b0101111100000000110000000101111011001000110010111000)))
(assert (= y (fp #b0 #b01101011000 #b0001000101000010010000101001100010111011110011011101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
