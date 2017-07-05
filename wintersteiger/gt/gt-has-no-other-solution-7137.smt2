(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.80535350785166937015446819714270532131195068359375p-780 {- 3626989757862300 -780 (-2.839e-235)}
; Y = 1.6631196303485271670297152013517916202545166015625p-96 {+ 2986425320139688 -96 (2.09915e-029)}
; -1.80535350785166937015446819714270532131195068359375p-780 > 1.6631196303485271670297152013517916202545166015625p-96 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110011 #b1100111000101011101001011100000111110001000110011100)))
(assert (= y (fp #b0 #b01110011111 #b1010100111000010001101010100010110101110101110101000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
