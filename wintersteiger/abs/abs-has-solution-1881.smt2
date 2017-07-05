(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0284649705778232675612571256351657211780548095703125p-102 {+ 128194830887397 -102 (2.02829e-031)}
; 1.0284649705778232675612571256351657211780548095703125p-102 | == 1.0284649705778232675612571256351657211780548095703125p-102
; [HW: 1.0284649705778232675612571256351657211780548095703125p-102] 

; mpf : + 128194830887397 -102
; mpfd: + 128194830887397 -102 (2.02829e-031) class: Pos. norm. non-zero
; hwf : + 128194830887397 -102 (2.02829e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011001 #b0000011101001001011110101111010110110110100111100101)))
(assert (= r (fp #b0 #b01110011001 #b0000011101001001011110101111010110110110100111100101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
