(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3094698735488490282108386963955126702785491943359375p361 {+ 1393728407196991 361 (6.15069e+108)}
; Y = -1.0568113881253371477697555746999569237232208251953125p10 {- 255855746391669 10 (-1082.17)}
; 1.3094698735488490282108386963955126702785491943359375p361 = -1.0568113881253371477697555746999569237232208251953125p10 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101101000 #b0100111100111001011010101110100111111101010100111111)))
(assert (= y (fp #b1 #b10000001001 #b0000111010001011001100001110111000001001111001110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
