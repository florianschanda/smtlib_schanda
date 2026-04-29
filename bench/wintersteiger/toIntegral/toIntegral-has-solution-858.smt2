(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1931107660621782518006739337579347193241119384765625 538 {+ 869693574078857 538 (1.07354e+162)}
; 1.1931107660621782518006739337579347193241119384765625 538 I == 1.1931107660621782518006739337579347193241119384765625 538
; [HW: 1.1931107660621782518006739337579347193241119384765625 538] 

; mpf : + 869693574078857 538
; mpfd: + 869693574078857 538 (1.07354e+162) class: Pos. norm. non-zero
; hwf : + 869693574078857 538 (1.07354e+162) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011001 #b0011000101101111101101010000100010111110000110001001)))
(assert (= r (fp #b0 #b11000011001 #b0011000101101111101101010000100010111110000110001001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
