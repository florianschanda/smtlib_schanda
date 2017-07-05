(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.528962041535490090637949833762831985950469970703125p-645 {+ 2382233253152370 -645 (1.04725e-194)}
; Y = 1.0623262171013010402020881883800029754638671875p861 {+ 280692328112832 861 (1.63337e+259)}
; 1.528962041535490090637949833762831985950469970703125p-645 = 1.0623262171013010402020881883800029754638671875p861 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111010 #b1000011101101010000011100110110100111000011001110010)))
(assert (= y (fp #b0 #b11101011100 #b0000111111110100100111000110100000100010001011000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
