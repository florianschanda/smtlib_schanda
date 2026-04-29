(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0602718113762954477152788967941887676715850830078125p648 {- 271440107255229 648 (-1.23838e+195)}
; Y = 1.1880531479067204525534862114000134170055389404296875p59 {+ 846916086838555 59 (6.84866e+017)}
; -1.0602718113762954477152788967941887676715850830078125p648 < 1.1880531479067204525534862114000134170055389404296875p59 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000111 #b0000111101101101111110010011001010111011010110111101)))
(assert (= y (fp #b0 #b10000111010 #b0011000000100100010000000100100000101011010100011011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
