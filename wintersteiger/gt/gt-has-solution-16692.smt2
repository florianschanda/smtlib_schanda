(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.611345520951130705356035832664929330348968505859375p625 {+ 2753255460350134 625 (2.24355e+188)}
; Y = 1.6430173856427885414888123705168254673480987548828125p902 {+ 2895892858373613 902 (5.55518e+271)}
; 1.611345520951130705356035832664929330348968505859375p625 > 1.6430173856427885414888123705168254673480987548828125p902 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110000 #b1001110010000001001000111101101100001010100010110110)))
(assert (= y (fp #b0 #b11110000101 #b1010010010011100110010011001001000011000010111101101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
