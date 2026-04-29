(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.51738804816273376019353236188180744647979736328125p-294 {- 2330108620911636 -294 (-4.76736e-089)}
; Y = -1.9599916622225930229461710041505284607410430908203125p-440 {- 4323418092264453 -440 (-6.90329e-133)}
; -1.51738804816273376019353236188180744647979736328125p-294 < -1.9599916622225930229461710041505284607410430908203125p-440 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011001 #b1000010001110011100010110000101000110011010000010100)))
(assert (= y (fp #b1 #b01001000111 #b1111010111000010000000110111100110101101110000000101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
