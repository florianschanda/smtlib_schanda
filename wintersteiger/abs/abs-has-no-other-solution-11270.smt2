(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.90689730590705419643882123637013137340545654296875p907 {+ 4084302368946316 907 (2.06316e+273)}
; 1.90689730590705419643882123637013137340545654296875p907 | == 1.90689730590705419643882123637013137340545654296875p907
; [HW: 1.90689730590705419643882123637013137340545654296875p907] 

; mpf : + 4084302368946316 907
; mpfd: + 4084302368946316 907 (2.06316e+273) class: Pos. norm. non-zero
; hwf : + 4084302368946316 907 (2.06316e+273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001010 #b1110100000101010011010111111110110110011100010001100)))
(assert (= r (fp #b0 #b11110001010 #b1110100000101010011010111111110110110011100010001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
