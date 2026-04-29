(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.329130226883250553981952180038206279277801513671875p-831 {- 1482270767147774 -831 (-9.28199e-251)}
; -1.329130226883250553981952180038206279277801513671875p-831 | == 1.329130226883250553981952180038206279277801513671875p-831
; [HW: 1.329130226883250553981952180038206279277801513671875p-831] 

; mpf : + 1482270767147774 -831
; mpfd: + 1482270767147774 -831 (9.28199e-251) class: Pos. norm. non-zero
; hwf : + 1482270767147774 -831 (9.28199e-251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011000000 #b0101010001000001111000001110100010010110101011111110)))
(assert (= r (fp #b0 #b00011000000 #b0101010001000001111000001110100010010110101011111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
