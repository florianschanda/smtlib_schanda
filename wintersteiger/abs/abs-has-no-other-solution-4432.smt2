(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1291683695940173404181905425502918660640716552734375p88 {- 581722621171671 88 (-3.49461e+026)}
; -1.1291683695940173404181905425502918660640716552734375p88 | == 1.1291683695940173404181905425502918660640716552734375p88
; [HW: 1.1291683695940173404181905425502918660640716552734375p88] 

; mpf : + 581722621171671 88
; mpfd: + 581722621171671 88 (3.49461e+026) class: Pos. norm. non-zero
; hwf : + 581722621171671 88 (3.49461e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001010111 #b0010000100010001001011011010001100010101011111010111)))
(assert (= r (fp #b0 #b10001010111 #b0010000100010001001011011010001100010101011111010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
