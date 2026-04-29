(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.19412262820887082881426977110095322132110595703125p625 {- 874250596065652 625 (-1.66263e+188)}
; Y = -1.9887711331567767825134751547011546790599822998046875p170 {- 4453029306839563 170 (-2.97635e+051)}
; -1.19412262820887082881426977110095322132110595703125p625 = -1.9887711331567767825134751547011546790599822998046875p170 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001110000 #b0011000110110010000001010100001110010010000101110100)))
(assert (= y (fp #b1 #b10010101001 #b1111110100100000000110101110000000100011001000001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
