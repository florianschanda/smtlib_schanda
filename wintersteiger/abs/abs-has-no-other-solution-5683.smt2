(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.02151637509075410292780361487530171871185302734375p69 {- 96901138841084 69 (-6.02997e+020)}
; -1.02151637509075410292780361487530171871185302734375p69 | == 1.02151637509075410292780361487530171871185302734375p69
; [HW: 1.02151637509075410292780361487530171871185302734375p69] 

; mpf : + 96901138841084 69
; mpfd: + 96901138841084 69 (6.02997e+020) class: Pos. norm. non-zero
; hwf : + 96901138841084 69 (6.02997e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000100 #b0000010110000010000110001101111101010111110111111100)))
(assert (= r (fp #b0 #b10001000100 #b0000010110000010000110001101111101010111110111111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
