(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.105364814444933951875782440765760838985443115234375p-758 {- 474520939072166 -758 (-7.29069e-229)}
; -1.105364814444933951875782440765760838985443115234375p-758 | == 1.105364814444933951875782440765760838985443115234375p-758
; [HW: 1.105364814444933951875782440765760838985443115234375p-758] 

; mpf : + 474520939072166 -758
; mpfd: + 474520939072166 -758 (7.29069e-229) class: Pos. norm. non-zero
; hwf : + 474520939072166 -758 (7.29069e-229) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100001001 #b0001101011111001001100000100000000110000101010100110)))
(assert (= r (fp #b0 #b00100001001 #b0001101011111001001100000100000000110000101010100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
