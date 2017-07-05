(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.78480597044634947678787284530699253082275390625p382 {+ 3534451876060320 382 (1.75812e+115)}
; Y = -1.198764862974457390265570211340673267841339111328125p24 {- 895157362826114 24 (-2.01119e+007)}
; 1.78480597044634947678787284530699253082275390625p382 < -1.198764862974457390265570211340673267841339111328125p24 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101111101 #b1100100011101001000010110100100011000101110010100000)))
(assert (= y (fp #b1 #b10000010111 #b0011001011100010010000010000101000010001101110000010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
