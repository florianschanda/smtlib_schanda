(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.991088011335230500975512768491171300411224365234375p965 {- 4463463598540710 965 (-6.20921e+290)}
; -1.991088011335230500975512768491171300411224365234375p965 | == 1.991088011335230500975512768491171300411224365234375p965
; [HW: 1.991088011335230500975512768491171300411224365234375p965] 

; mpf : + 4463463598540710 965
; mpfd: + 4463463598540710 965 (6.20921e+290) class: Pos. norm. non-zero
; hwf : + 4463463598540710 965 (6.20921e+290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111000100 #b1111110110110111111100011010010000100100011110100110)))
(assert (= r (fp #b0 #b11111000100 #b1111110110110111111100011010010000100100011110100110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
