(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5931472955109973188569938429282046854496002197265625p514 {- 2671297939039145 514 (-8.54425e+154)}
; Y = -1.7563877977560291565595207430305890738964080810546875p820 {- 3406467804121643 820 (-1.22805e+247)}
; -1.5931472955109973188569938429282046854496002197265625p514 = -1.7563877977560291565595207430305890738964080810546875p820 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000001 #b1001011111011000100000000100101111101110001110101001)))
(assert (= y (fp #b1 #b11100110011 #b1100000110100010101000010111011001110100101000101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
