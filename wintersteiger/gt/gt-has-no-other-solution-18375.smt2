(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2683629973558130377142560973879881203174591064453125p-846 {- 1208599494891669 -846 (-2.70313e-255)}
; Y = 1.3768021239107530728773554073995910584926605224609375p989 {+ 1696965904836879 989 (7.2034e+297)}
; -1.2683629973558130377142560973879881203174591064453125p-846 > 1.3768021239107530728773554073995910584926605224609375p989 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110001 #b0100010010110011011011111111100100011001100010010101)))
(assert (= y (fp #b0 #b11111011100 #b0110000001110110000110101001111101000010100100001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
