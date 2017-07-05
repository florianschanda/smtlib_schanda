(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.05073495780572567781518955598585307598114013671875p-524 {- 228489937068524 -524 (-1.91327e-158)}
; Y = 1.3611524986354768262941661305376328527927398681640625p-351 {+ 1626486258278657 -351 (2.96742e-106)}
; -1.05073495780572567781518955598585307598114013671875p-524 > 1.3611524986354768262941661305376328527927398681640625p-351 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110011 #b0000110011111100111101110101100010001010000111101100)))
(assert (= y (fp #b0 #b01010100000 #b0101110001110100011111010111101010000010000100000001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
