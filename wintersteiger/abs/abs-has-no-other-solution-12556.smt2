(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5891961646229304516708680239389650523662567138671875p224 {- 2653503627443955 224 (-4.28446e+067)}
; -1.5891961646229304516708680239389650523662567138671875p224 | == 1.5891961646229304516708680239389650523662567138671875p224
; [HW: 1.5891961646229304516708680239389650523662567138671875p224] 

; mpf : + 2653503627443955 224
; mpfd: + 2653503627443955 224 (4.28446e+067) class: Pos. norm. non-zero
; hwf : + 2653503627443955 224 (4.28446e+067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011111 #b1001011011010101100011110101000111111011111011110011)))
(assert (= r (fp #b0 #b10011011111 #b1001011011010101100011110101000111111011111011110011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
