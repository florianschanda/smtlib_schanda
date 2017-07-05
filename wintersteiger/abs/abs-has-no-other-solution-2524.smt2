(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4033244570221634628381934817298315465450286865234375p-543 {- 1816411874354423 -543 (-4.87383e-164)}
; -1.4033244570221634628381934817298315465450286865234375p-543 | == 1.4033244570221634628381934817298315465450286865234375p-543
; [HW: 1.4033244570221634628381934817298315465450286865234375p-543] 

; mpf : + 1816411874354423 -543
; mpfd: + 1816411874354423 -543 (4.87383e-164) class: Pos. norm. non-zero
; hwf : + 1816411874354423 -543 (4.87383e-164) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111100000 #b0110011101000000010001011000100010010110010011110111)))
(assert (= r (fp #b0 #b00111100000 #b0110011101000000010001011000100010010110010011110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
