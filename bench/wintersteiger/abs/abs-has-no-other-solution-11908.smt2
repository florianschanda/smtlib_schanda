(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2550018558311695215934378211386501789093017578125p869 {+ 1148426262900040 869 (4.93981e+261)}
; 1.2550018558311695215934378211386501789093017578125p869 | == 1.2550018558311695215934378211386501789093017578125p869
; [HW: 1.2550018558311695215934378211386501789093017578125p869] 

; mpf : + 1148426262900040 869
; mpfd: + 1148426262900040 869 (4.93981e+261) class: Pos. norm. non-zero
; hwf : + 1148426262900040 869 (4.93981e+261) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100100 #b0100000101000111110011010011011100110110110101001000)))
(assert (= r (fp #b0 #b11101100100 #b0100000101000111110011010011011100110110110101001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
