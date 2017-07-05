(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4015341864228207935383352378266863524913787841796875p-650 {- 1808349212350331 -650 (-2.9999e-196)}
; -1.4015341864228207935383352378266863524913787841796875p-650 | == 1.4015341864228207935383352378266863524913787841796875p-650
; [HW: 1.4015341864228207935383352378266863524913787841796875p-650] 

; mpf : + 1808349212350331 -650
; mpfd: + 1808349212350331 -650 (2.9999e-196) class: Pos. norm. non-zero
; hwf : + 1808349212350331 -650 (2.9999e-196) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110101 #b0110011011001010111100011100011011101001011101111011)))
(assert (= r (fp #b0 #b00101110101 #b0110011011001010111100011100011011101001011101111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
