(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9028220693068664814973089960403740406036376953125p-234 {- 4065949134912264 -234 (-6.89254e-071)}
; Y = 1.5794342799788811948502598170307464897632598876953125p619 {+ 2609540007398581 619 (3.43612e+186)}
; -1.9028220693068664814973089960403740406036376953125p-234 < 1.5794342799788811948502598170307464897632598876953125p619 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100010101 #b1110011100011111010110001101110111000111101100001000)))
(assert (= y (fp #b0 #b11001101010 #b1001010001010101110011100001001010110000110010110101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
