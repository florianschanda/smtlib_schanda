(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4797695775118813177329002428450621664524078369140625p-494 {- 2160690090506209 -494 (-2.89319e-149)}
; -1.4797695775118813177329002428450621664524078369140625p-494 | == 1.4797695775118813177329002428450621664524078369140625p-494
; [HW: 1.4797695775118813177329002428450621664524078369140625p-494] 

; mpf : + 2160690090506209 -494
; mpfd: + 2160690090506209 -494 (2.89319e-149) class: Pos. norm. non-zero
; hwf : + 2160690090506209 -494 (2.89319e-149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000010001 #b0111101011010010001011011101010100000111011111100001)))
(assert (= r (fp #b0 #b01000010001 #b0111101011010010001011011101010100000111011111100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
