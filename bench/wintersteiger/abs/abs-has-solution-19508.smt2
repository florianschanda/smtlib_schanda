(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.408648038670009317030462625552900135517120361328125p-934 {- 1840387154679938 -934 (-9.70033e-282)}
; -1.408648038670009317030462625552900135517120361328125p-934 | == 1.408648038670009317030462625552900135517120361328125p-934
; [HW: 1.408648038670009317030462625552900135517120361328125p-934] 

; mpf : + 1840387154679938 -934
; mpfd: + 1840387154679938 -934 (9.70033e-282) class: Pos. norm. non-zero
; hwf : + 1840387154679938 -934 (9.70033e-282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001011001 #b0110100010011101001010000110100110101001100010000010)))
(assert (= r (fp #b0 #b00001011001 #b0110100010011101001010000110100110101001100010000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
