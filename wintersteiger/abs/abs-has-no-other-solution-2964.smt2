(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6835606785266425955427394001162610948085784912109375p-222 {+ 3078483617097711 -222 (2.49787e-067)}
; 1.6835606785266425955427394001162610948085784912109375p-222 | == 1.6835606785266425955427394001162610948085784912109375p-222
; [HW: 1.6835606785266425955427394001162610948085784912109375p-222] 

; mpf : + 3078483617097711 -222
; mpfd: + 3078483617097711 -222 (2.49787e-067) class: Pos. norm. non-zero
; hwf : + 3078483617097711 -222 (2.49787e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100001 #b1010111011111101110101010010011100011010011111101111)))
(assert (= r (fp #b0 #b01100100001 #b1010111011111101110101010010011100011010011111101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
