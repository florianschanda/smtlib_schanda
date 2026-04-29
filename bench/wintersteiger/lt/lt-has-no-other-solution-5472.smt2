(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1175130395313208619967326740152202546596527099609375p689 {+ 529231681044431 689 (2.87025e+207)}
; Y = -1.6102620611503202230352371771004982292652130126953125p1000 {- 2748375991194933 1000 (-1.72541e+301)}
; 1.1175130395313208619967326740152202546596527099609375p689 < -1.6102620611503202230352371771004982292652130126953125p1000 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110000 #b0001111000010101010101011010010110100011111111001111)))
(assert (= y (fp #b1 #b11111100111 #b1001110000111010001000100110101010100001010100110101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
