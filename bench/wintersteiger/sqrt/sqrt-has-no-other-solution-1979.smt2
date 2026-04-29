(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9494234750714358739287490607239305973052978515625p135 {+ 4275823208548520 135 (8.49094e+040)}
; 1.9494234750714358739287490607239305973052978515625p135 S == 1.9745498094864235572032384880003519356250762939453125p67
; [HW: 1.9745498094864235572032384880003519356250762939453125p67] 

; mpf : + 4388982158857045 67
; mpfd: + 4388982158857045 67 (2.91392e+020) class: Pos. norm. non-zero
; hwf : + 4388982158857045 67 (2.91392e+020) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010000110 #b1111001100001101011010101011011101111100100010101000)))
(assert (= r (fp #b0 #b10001000010 #b1111100101111100000110001010100000010001001101010101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
