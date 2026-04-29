(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7298854510413137486324330893694423139095306396484375p-776 {- 3287111845332807 -776 (-4.35252e-234)}
; Y = -1.8067257041971185316242554108612239360809326171875p-634 {- 3633169580812344 -634 (-2.5344e-191)}
; -1.7298854510413137486324330893694423139095306396484375p-776 > -1.8067257041971185316242554108612239360809326171875p-634 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110111 #b1011101011011001110001011101111000001100011101000111)))
(assert (= y (fp #b1 #b00110000101 #b1100111010000101100100110110010001011110100000111000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
