(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.330989809187801853340715751983225345611572265625p-1001 {- 1490645581321616 -1001 (-6.21082e-302)}
; -1.330989809187801853340715751983225345611572265625p-1001 | == 1.330989809187801853340715751983225345611572265625p-1001
; [HW: 1.330989809187801853340715751983225345611572265625p-1001] 

; mpf : + 1490645581321616 -1001
; mpfd: + 1490645581321616 -1001 (6.21082e-302) class: Pos. norm. non-zero
; hwf : + 1490645581321616 -1001 (6.21082e-302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000010110 #b0101010010111011101111111000010111000101010110010000)))
(assert (= r (fp #b0 #b00000010110 #b0101010010111011101111111000010111000101010110010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
