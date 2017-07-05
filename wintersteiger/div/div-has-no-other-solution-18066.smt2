(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.32082185205405178152204825892113149166107177734375p-817 {- 1444853173362940 -817 (-1.51126e-246)}
; Y = -1.13688007186733219811003436916507780551910400390625p447 {- 616453040656164 447 (-4.13164e+134)}
; -1.32082185205405178152204825892113149166107177734375p-817 / -1.13688007186733219811003436916507780551910400390625p447 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001110 #b0101001000100001011000011000001001101010000011111100)))
(assert (= y (fp #b1 #b10110111110 #b0010001100001010100100101000100000100100111100100100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
