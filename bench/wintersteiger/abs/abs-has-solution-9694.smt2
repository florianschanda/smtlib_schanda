(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1901917033668329981566103015211410820484161376953125p871 {- 856547284411829 871 (-1.87389e+262)}
; -1.1901917033668329981566103015211410820484161376953125p871 | == 1.1901917033668329981566103015211410820484161376953125p871
; [HW: 1.1901917033668329981566103015211410820484161376953125p871] 

; mpf : + 856547284411829 871
; mpfd: + 856547284411829 871 (1.87389e+262) class: Pos. norm. non-zero
; hwf : + 856547284411829 871 (1.87389e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101100110 #b0011000010110000011001110100100111101110010110110101)))
(assert (= r (fp #b0 #b11101100110 #b0011000010110000011001110100100111101110010110110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
