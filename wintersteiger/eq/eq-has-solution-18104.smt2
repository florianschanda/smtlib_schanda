(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.22998022106977611400679961661808192729949951171875p-282 {- 1035738837912428 -282 (-1.58285e-085)}
; Y = 1.0291234494489531758887324031093157827854156494140625p661 {+ 131160356086049 661 (9.84679e+198)}
; -1.22998022106977611400679961661808192729949951171875p-282 = 1.0291234494489531758887324031093157827854156494140625p661 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011100101 #b0011101011011111111110111101100000111000101101101100)))
(assert (= y (fp #b0 #b11010010100 #b0000011101110100101000100110011011101110000100100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
