(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5746677320673578837073591785156168043613433837890625p-302 {- 2588073384000401 -302 (-1.93255e-091)}
; -1.5746677320673578837073591785156168043613433837890625p-302 | == 1.5746677320673578837073591785156168043613433837890625p-302
; [HW: 1.5746677320673578837073591785156168043613433837890625p-302] 

; mpf : + 2588073384000401 -302
; mpfd: + 2588073384000401 -302 (1.93255e-091) class: Pos. norm. non-zero
; hwf : + 2588073384000401 -302 (1.93255e-091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011010001 #b1001001100011101011011001010101101001011101110010001)))
(assert (= r (fp #b0 #b01011010001 #b1001001100011101011011001010101101001011101110010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
