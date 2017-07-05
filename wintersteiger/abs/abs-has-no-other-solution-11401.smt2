(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3122172129642490912004859637818299233913421630859375p-139 {+ 1406101323964447 -139 (1.88294e-042)}
; 1.3122172129642490912004859637818299233913421630859375p-139 | == 1.3122172129642490912004859637818299233913421630859375p-139
; [HW: 1.3122172129642490912004859637818299233913421630859375p-139] 

; mpf : + 1406101323964447 -139
; mpfd: + 1406101323964447 -139 (1.88294e-042) class: Pos. norm. non-zero
; hwf : + 1406101323964447 -139 (1.88294e-042) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110100 #b0100111111101101011101111001111011101110000000011111)))
(assert (= r (fp #b0 #b01101110100 #b0100111111101101011101111001111011101110000000011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
