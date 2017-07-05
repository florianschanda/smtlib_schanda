(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.54336946466393865051713873981498181819915771484375p-926 {+ 2447118518585020 -926 (2.72078e-279)}
; 1.54336946466393865051713873981498181819915771484375p-926 | == 1.54336946466393865051713873981498181819915771484375p-926
; [HW: 1.54336946466393865051713873981498181819915771484375p-926] 

; mpf : + 2447118518585020 -926
; mpfd: + 2447118518585020 -926 (2.72078e-279) class: Pos. norm. non-zero
; hwf : + 2447118518585020 -926 (2.72078e-279) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100001 #b1000101100011010010000101110000001100000011010111100)))
(assert (= r (fp #b0 #b00001100001 #b1000101100011010010000101110000001100000011010111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
