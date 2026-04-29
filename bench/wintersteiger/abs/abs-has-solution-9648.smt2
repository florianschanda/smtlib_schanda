(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.151315921944112918851033100509084761142730712890625p741 {+ 681466329682730 741 (1.33175e+223)}
; 1.151315921944112918851033100509084761142730712890625p741 | == 1.151315921944112918851033100509084761142730712890625p741
; [HW: 1.151315921944112918851033100509084761142730712890625p741] 

; mpf : + 681466329682730 741
; mpfd: + 681466329682730 741 (1.33175e+223) class: Pos. norm. non-zero
; hwf : + 681466329682730 741 (1.33175e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100100 #b0010011010111100101000111110100000011101001100101010)))
(assert (= r (fp #b0 #b11011100100 #b0010011010111100101000111110100000011101001100101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
