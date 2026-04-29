(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.085389975898094494510814911336638033390045166015625p-829 {- 384562263635834 -829 (-3.03193e-250)}
; -1.085389975898094494510814911336638033390045166015625p-829 | == 1.085389975898094494510814911336638033390045166015625p-829
; [HW: 1.085389975898094494510814911336638033390045166015625p-829] 

; mpf : + 384562263635834 -829
; mpfd: + 384562263635834 -829 (3.03193e-250) class: Pos. norm. non-zero
; hwf : + 384562263635834 -829 (3.03193e-250) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000010 #b0001010111011100000111100001000111100011011101111010)))
(assert (= r (fp #b0 #b00011000010 #b0001010111011100000111100001000111100011011101111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
