(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.796388713708676476699110935442149639129638671875 312 {- 3586615914300464 312 (-1.49885e+094)}
; -1.796388713708676476699110935442149639129638671875 312 I == -1.796388713708676476699110935442149639129638671875 312
; [HW: -1.796388713708676476699110935442149639129638671875 312] 

; mpf : - 3586615914300464 312
; mpfd: - 3586615914300464 312 (-1.49885e+094) class: Neg. norm. non-zero
; hwf : - 3586615914300464 312 (-1.49885e+094) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110111 #b1100101111100000001000010111100001001000010000110000)))
(assert (= r (fp #b1 #b10100110111 #b1100101111100000001000010111100001001000010000110000)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
