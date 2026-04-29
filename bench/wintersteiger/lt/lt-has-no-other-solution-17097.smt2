(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3397920630290141019713701098226010799407958984375p380 {- 1530287408440920 380 (-3.29941e+114)}
; Y = -1.789722168364644261373541667126119136810302734375p283 {- 3556592463173232 283 (-2.78147e+085)}
; -1.3397920630290141019713701098226010799407958984375p380 < -1.789722168364644261373541667126119136810302734375p283 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101111011 #b0101011011111100100111001101011000100110011001011000)))
(assert (= y (fp #b1 #b10100011010 #b1100101000101011001110110110011000001101011001110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
