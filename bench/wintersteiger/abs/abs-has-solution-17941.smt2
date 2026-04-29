(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2177863642399049393105769922840408980846405029296875p-9 {- 980822588837211 -9 (-0.00237849)}
; -1.2177863642399049393105769922840408980846405029296875p-9 | == 1.2177863642399049393105769922840408980846405029296875p-9
; [HW: 1.2177863642399049393105769922840408980846405029296875p-9] 

; mpf : + 980822588837211 -9
; mpfd: + 980822588837211 -9 (0.00237849) class: Pos. norm. non-zero
; hwf : + 980822588837211 -9 (0.00237849) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111110110 #b0011011111000000110110001101111111101100110101011011)))
(assert (= r (fp #b0 #b01111110110 #b0011011111000000110110001101111111101100110101011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
