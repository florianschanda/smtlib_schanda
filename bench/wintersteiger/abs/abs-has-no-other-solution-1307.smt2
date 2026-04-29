(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.973814241506502309420056917588226497173309326171875p-484 {- 4385669455176766 -484 (-3.95174e-146)}
; -1.973814241506502309420056917588226497173309326171875p-484 | == 1.973814241506502309420056917588226497173309326171875p-484
; [HW: 1.973814241506502309420056917588226497173309326171875p-484] 

; mpf : + 4385669455176766 -484
; mpfd: + 4385669455176766 -484 (3.95174e-146) class: Pos. norm. non-zero
; hwf : + 4385669455176766 -484 (3.95174e-146) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000011011 #b1111100101001011111000111101111110100110010000111110)))
(assert (= r (fp #b0 #b01000011011 #b1111100101001011111000111101111110100110010000111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
