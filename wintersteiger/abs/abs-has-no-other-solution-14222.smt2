(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.345267143257391051491822508978657424449920654296875p-16 {- 1554944977717262 -16 (-2.05271e-005)}
; -1.345267143257391051491822508978657424449920654296875p-16 | == 1.345267143257391051491822508978657424449920654296875p-16
; [HW: 1.345267143257391051491822508978657424449920654296875p-16] 

; mpf : + 1554944977717262 -16
; mpfd: + 1554944977717262 -16 (2.05271e-005) class: Pos. norm. non-zero
; hwf : + 1554944977717262 -16 (2.05271e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111101111 #b0101100001100011011011010111000010101100100000001110)))
(assert (= r (fp #b0 #b01111101111 #b0101100001100011011011010111000010101100100000001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
