(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.47218533473549229029231355525553226470947265625p34 {+ 2126533697564576 34 (2.5292e+010)}
; 1.47218533473549229029231355525553226470947265625p34 | == 1.47218533473549229029231355525553226470947265625p34
; [HW: 1.47218533473549229029231355525553226470947265625p34] 

; mpf : + 2126533697564576 34
; mpfd: + 2126533697564576 34 (2.5292e+010) class: Pos. norm. non-zero
; hwf : + 2126533697564576 34 (2.5292e+010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100001 #b0111100011100001001000110101101001010110111110100000)))
(assert (= r (fp #b0 #b10000100001 #b0111100011100001001000110101101001010110111110100000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
