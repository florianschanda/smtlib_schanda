(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.252393085753199297727178418426774442195892333984375p673 {+ 1136677406948998 673 (4.90826e+202)}
; 1.252393085753199297727178418426774442195892333984375p673 S == 1.582651626703235780979639457655139267444610595703125p336
; [HW: 1.582651626703235780979639457655139267444610595703125p336] 

; mpf : + 2624029648907506 336
; mpfd: + 2624029648907506 336 (2.21546e+101) class: Pos. norm. non-zero
; hwf : + 2624029648907506 336 (2.21546e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100000 #b0100000010011100110101010101000100001011111010000110)))
(assert (= r (fp #b0 #b10101001111 #b1001010100101000101010000011000110100110110011110010)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
