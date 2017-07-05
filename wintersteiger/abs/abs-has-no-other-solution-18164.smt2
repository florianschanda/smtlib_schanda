(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0602370823200366611871459099347703158855438232421875p-937 {- 271283701490403 -937 (-9.12635e-283)}
; -1.0602370823200366611871459099347703158855438232421875p-937 | == 1.0602370823200366611871459099347703158855438232421875p-937
; [HW: 1.0602370823200366611871459099347703158855438232421875p-937] 

; mpf : + 271283701490403 -937
; mpfd: + 271283701490403 -937 (9.12635e-283) class: Pos. norm. non-zero
; hwf : + 271283701490403 -937 (9.12635e-283) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010110 #b0000111101101011101100101000101010010010001011100011)))
(assert (= r (fp #b0 #b00001010110 #b0000111101101011101100101000101010010010001011100011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
