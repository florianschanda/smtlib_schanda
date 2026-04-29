(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9941246898016771194050988924573175609111785888671875p-173 {- 4477139582550643 -173 (-1.66557e-052)}
; Y = -1.5137441350640921111647685393108986318111419677734375p350 {- 2313697895238423 350 (-3.47177e+105)}
; -1.9941246898016771194050988924573175609111785888671875p-173 < -1.5137441350640921111647685393108986318111419677734375p350 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101010010 #b1111111001111110111101001010011011011000001001110011)))
(assert (= y (fp #b1 #b10101011101 #b1000001110000100101111000101001010011100101100010111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
