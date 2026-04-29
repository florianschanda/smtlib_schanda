(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.517540042632770980191025955718941986560821533203125p101 {- 2330793143150258 101 (-3.84742e+030)}
; -1.517540042632770980191025955718941986560821533203125p101 | == 1.517540042632770980191025955718941986560821533203125p101
; [HW: 1.517540042632770980191025955718941986560821533203125p101] 

; mpf : + 2330793143150258 101
; mpfd: + 2330793143150258 101 (3.84742e+030) class: Pos. norm. non-zero
; hwf : + 2330793143150258 101 (3.84742e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001100100 #b1000010001111101100000010001010101111010011010110010)))
(assert (= r (fp #b0 #b10001100100 #b1000010001111101100000010001010101111010011010110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
