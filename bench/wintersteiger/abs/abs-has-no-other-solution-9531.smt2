(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.180190626031513811966533467057161033153533935546875p881 {- 811506436251182 881 (-1.90274e+265)}
; -1.180190626031513811966533467057161033153533935546875p881 | == 1.180190626031513811966533467057161033153533935546875p881
; [HW: 1.180190626031513811966533467057161033153533935546875p881] 

; mpf : + 811506436251182 881
; mpfd: + 811506436251182 881 (1.90274e+265) class: Pos. norm. non-zero
; hwf : + 811506436251182 881 (1.90274e+265) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101110000 #b0010111000100000111110010000110111011001111000101110)))
(assert (= r (fp #b0 #b11101110000 #b0010111000100000111110010000110111011001111000101110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
