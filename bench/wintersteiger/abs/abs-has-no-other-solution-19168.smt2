(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3409390022004517017961688907234929502010345458984375p453 {- 1535452763266023 453 (-3.11887e+136)}
; -1.3409390022004517017961688907234929502010345458984375p453 | == 1.3409390022004517017961688907234929502010345458984375p453
; [HW: 1.3409390022004517017961688907234929502010345458984375p453] 

; mpf : + 1535452763266023 453
; mpfd: + 1535452763266023 453 (3.11887e+136) class: Pos. norm. non-zero
; hwf : + 1535452763266023 453 (3.11887e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111000100 #b0101011101000111110001110100100001100001101111100111)))
(assert (= r (fp #b0 #b10111000100 #b0101011101000111110001110100100001100001101111100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
