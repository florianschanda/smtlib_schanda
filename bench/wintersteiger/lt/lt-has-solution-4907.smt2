(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1909010907373467347269979654811322689056396484375p950 {- 859742081109336 950 (-1.13337e+286)}
; Y = 1.0262539792109055536428741106647066771984100341796875p-877 {+ 118237410991227 -877 (1.01847e-264)}
; -1.1909010907373467347269979654811322689056396484375p950 < 1.0262539792109055536428741106647066771984100341796875p-877 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110110101 #b0011000011011110111001001101010101111100110101011000)))
(assert (= y (fp #b0 #b00010010010 #b0000011010111000100101001010111000011001110001111011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
