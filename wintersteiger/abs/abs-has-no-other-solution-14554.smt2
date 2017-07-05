(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.35432549918371503139269407256506383419036865234375p-736 {- 1595740186091644 -736 (-3.74668e-222)}
; -1.35432549918371503139269407256506383419036865234375p-736 | == 1.35432549918371503139269407256506383419036865234375p-736
; [HW: 1.35432549918371503139269407256506383419036865234375p-736] 

; mpf : + 1595740186091644 -736
; mpfd: + 1595740186091644 -736 (3.74668e-222) class: Pos. norm. non-zero
; hwf : + 1595740186091644 -736 (3.74668e-222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100011111 #b0101101010110101000100110110111100100010000001111100)))
(assert (= r (fp #b0 #b00100011111 #b0101101010110101000100110110111100100010000001111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
