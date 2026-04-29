(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.14000770182974964228606040705926716327667236328125p-810 {+ 630538633789460 -810 (1.6696e-244)}
; 1.14000770182974964228606040705926716327667236328125p-810 S == 1.06771143190927286781288785277865827083587646484375p-405
; [HW: 1.06771143190927286781288785277865827083587646484375p-405] 

; mpf : + 304945179515324 -405
; mpfd: + 304945179515324 -405 (1.29213e-122) class: Pos. norm. non-zero
; hwf : + 304945179515324 -405 (1.29213e-122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011010101 #b0010001111010111100010110111010010001100000000010100)))
(assert (= r (fp #b0 #b01001101010 #b0001000101010101100010010101000110011101100110111100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
