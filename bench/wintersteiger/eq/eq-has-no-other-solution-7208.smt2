(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.09116434791098892986838109209202229976654052734375p-577 {+ 410567723281404 -577 (2.20588e-174)}
; Y = -1.61266650158313762375428268569521605968475341796875p-1012 {- 2759204628232204 -1012 (-3.67442e-305)}
; 1.09116434791098892986838109209202229976654052734375p-577 = -1.61266650158313762375428268569521605968475341796875p-1012 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111110 #b0001011101010110100010111111010011010110101111111100)))
(assert (= y (fp #b1 #b00000001011 #b1001110011010111101101100011101110100111100000001100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
