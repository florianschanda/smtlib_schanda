(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.512306159049839227037637101602740585803985595703125p223 {- 2307221826996466 223 (-2.03858e+067)}
; Y = 1.3410548715585084433854490271187387406826019287109375p-319 {+ 1535974592463791 -319 (1.25568e-096)}
; -1.512306159049839227037637101602740585803985595703125p223 > 1.3410548715585084433854490271187387406826019287109375p-319 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011110 #b1000001100100110011111110001011010101000100011110010)))
(assert (= y (fp #b0 #b01011000000 #b0101011101001111010111110011111101111100001110101111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
