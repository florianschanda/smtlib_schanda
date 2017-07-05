(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.35199626782209225694941778783686459064483642578125p-768 {+ 1585250260599380 -768 (8.70841e-232)}
; Y = 1.7955073264946062039371099672280251979827880859375p-105 {+ 3582646499171608 -105 (4.42627e-032)}
; 1.35199626782209225694941778783686459064483642578125p-768 = 1.7955073264946062039371099672280251979827880859375p-105 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111111 #b0101101000011100011011010110101010011100001001010100)))
(assert (= y (fp #b0 #b01110010110 #b1100101110100110010111100011111100000101110100011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
