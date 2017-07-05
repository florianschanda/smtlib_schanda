(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.39316445094292884476772087509743869304656982421875p970 {+ 1770655274761900 970 (1.39027e+292)}
; 1.39316445094292884476772087509743869304656982421875p970 | == 1.39316445094292884476772087509743869304656982421875p970
; [HW: 1.39316445094292884476772087509743869304656982421875p970] 

; mpf : + 1770655274761900 970
; mpfd: + 1770655274761900 970 (1.39027e+292) class: Pos. norm. non-zero
; hwf : + 1770655274761900 970 (1.39027e+292) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111001001 #b0110010010100110011011001110101010111111111010101100)))
(assert (= r (fp #b0 #b11111001001 #b0110010010100110011011001110101010111111111010101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
