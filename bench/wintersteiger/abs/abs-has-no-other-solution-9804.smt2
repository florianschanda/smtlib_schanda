(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5072137751276966088909148311358876526355743408203125p-452 {+ 2284287768662277 -452 (1.29604e-136)}
; 1.5072137751276966088909148311358876526355743408203125p-452 | == 1.5072137751276966088909148311358876526355743408203125p-452
; [HW: 1.5072137751276966088909148311358876526355743408203125p-452] 

; mpf : + 2284287768662277 -452
; mpfd: + 2284287768662277 -452 (1.29604e-136) class: Pos. norm. non-zero
; hwf : + 2284287768662277 -452 (1.29604e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000111011 #b1000000111011000110000110001000001000001000100000101)))
(assert (= r (fp #b0 #b01000111011 #b1000000111011000110000110001000001000001000100000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
