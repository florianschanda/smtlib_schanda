(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4835209972967835501123090580222196877002716064453125p719 {- 2177584983251605 719 (-4.09129e+216)}
; Y = -1.3242679816205278342522433376871049404144287109375p-999 {- 1460373161194392 -999 (-2.47178e-301)}
; -1.4835209972967835501123090580222196877002716064453125p719 > -1.3242679816205278342522433376871049404144287109375p-999 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001110 #b0111101111001000000010000011011001010001101010010101)))
(assert (= y (fp #b1 #b00000011000 #b0101001100000011001110011111100000110011001110011000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
