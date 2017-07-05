(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3547641298763715145270225548301823437213897705078125p-473 {+ 1597715603115645 -473 (5.55489e-143)}
; Y = 1.725455978022790048953538644127547740936279296875p-101 {+ 3267163272297136 -101 (6.80572e-031)}
; 1.3547641298763715145270225548301823437213897705078125p-473 = 1.725455978022790048953538644127547740936279296875p-101 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100110 #b0101101011010001110100100110111110011100111001111101)))
(assert (= y (fp #b0 #b01110011010 #b1011100110110111011110111010010001001011101010110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
