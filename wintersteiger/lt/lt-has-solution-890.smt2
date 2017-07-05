(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5737057268818912536545440161717124283313751220703125p192 {+ 2583740897805605 192 (9.87831e+057)}
; Y = 1.93011478064319863534592514042742550373077392578125p-86 {+ 4188864579516500 -86 (2.49461e-026)}
; 1.5737057268818912536545440161717124283313751220703125p192 < 1.93011478064319863534592514042742550373077392578125p-86 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111111 #b1001001011011110011000001110011001111100010100100101)))
(assert (= y (fp #b0 #b01110101001 #b1110111000011100000000001001010001100011100001010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
