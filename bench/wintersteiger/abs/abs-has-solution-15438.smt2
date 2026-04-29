(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.871545529742752567159413956687785685062408447265625p50 {- 3925092122985882 50 (-2.10717e+015)}
; -1.871545529742752567159413956687785685062408447265625p50 | == 1.871545529742752567159413956687785685062408447265625p50
; [HW: 1.871545529742752567159413956687785685062408447265625p50] 

; mpf : + 3925092122985882 50
; mpfd: + 3925092122985882 50 (2.10717e+015) class: Pos. norm. non-zero
; hwf : + 3925092122985882 50 (2.10717e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110001 #b1101111100011101100110111001101100111000010110011010)))
(assert (= r (fp #b0 #b10000110001 #b1101111100011101100110111001101100111000010110011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
