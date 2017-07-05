(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.91178136830813993896072133793495595455169677734375p172 {+ 4106298230555900 172 (1.14445e+052)}
; Y = 1.346740218349721462942625294090248644351959228515625p871 {+ 1561579118154170 871 (2.12036e+262)}
; 1.91178136830813993896072133793495595455169677734375p172 > 1.346740218349721462942625294090248644351959228515625p871 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101011 #b1110100101101010100000001111010111111100010011111100)))
(assert (= y (fp #b0 #b11101100110 #b0101100011000011111101111000101000000101000110111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
