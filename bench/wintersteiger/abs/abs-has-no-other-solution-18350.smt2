(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4490267946933581555413184105418622493743896484375p-238 {- 2022236905260376 -238 (-3.28048e-072)}
; -1.4490267946933581555413184105418622493743896484375p-238 | == 1.4490267946933581555413184105418622493743896484375p-238
; [HW: 1.4490267946933581555413184105418622493743896484375p-238] 

; mpf : + 2022236905260376 -238
; mpfd: + 2022236905260376 -238 (3.28048e-072) class: Pos. norm. non-zero
; hwf : + 2022236905260376 -238 (3.28048e-072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100010001 #b0111001011110011011010111000011000111100010101011000)))
(assert (= r (fp #b0 #b01100010001 #b0111001011110011011010111000011000111100010101011000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
