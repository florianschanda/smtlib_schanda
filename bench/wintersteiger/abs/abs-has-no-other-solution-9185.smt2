(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.839172014380058062243961103376932442188262939453125p-337 {+ 3779294771261778 -337 (6.56922e-102)}
; 1.839172014380058062243961103376932442188262939453125p-337 | == 1.839172014380058062243961103376932442188262939453125p-337
; [HW: 1.839172014380058062243961103376932442188262939453125p-337] 

; mpf : + 3779294771261778 -337
; mpfd: + 3779294771261778 -337 (6.56922e-102) class: Pos. norm. non-zero
; hwf : + 3779294771261778 -337 (6.56922e-102) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101110 #b1101011011010011111110100010010101111011000101010010)))
(assert (= r (fp #b0 #b01010101110 #b1101011011010011111110100010010101111011000101010010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
