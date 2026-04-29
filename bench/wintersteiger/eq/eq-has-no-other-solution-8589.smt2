(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0332377926915292665199785915319807827472686767578125p300 {- 149689710780189 300 (-2.10474e+090)}
; Y = -1.9405623336066450956849394060554914176464080810546875p290 {- 4235916175149611 290 (-3.86035e+087)}
; -1.0332377926915292665199785915319807827472686767578125p300 = -1.9405623336066450956849394060554914176464080810546875p290 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100101011 #b0000100010000010010001011010000010011001111100011101)))
(assert (= y (fp #b1 #b10100100001 #b1111000011001000101100010110111010110000101000101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
