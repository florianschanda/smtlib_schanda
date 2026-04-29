(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3355354789087261480062807095237076282501220703125p-526 {+ 1511117457782920 -526 (6.07964e-159)}
; 1.3355354789087261480062807095237076282501220703125p-526 S == 1.155653701983741399317295872606337070465087890625p-263
; [HW: 1.155653701983741399317295872606337070465087890625p-263] 

; mpf : + 701001954252816 -263
; mpfd: + 701001954252816 -263 (7.7972e-080) class: Pos. norm. non-zero
; hwf : + 701001954252816 -263 (7.7972e-080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110001 #b0101010111100101101001110011010010001111100010001000)))
(assert (= r (fp #b0 #b01011111000 #b0010011111011000111010111100011110000101100000010000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
