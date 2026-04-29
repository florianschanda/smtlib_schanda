(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.676302062389144253984341048635542392730712890625 774 {+ 3045793716165648 774 (1.66559e+233)}
; 1.676302062389144253984341048635542392730712890625 774 I == 1.676302062389144253984341048635542392730712890625 774
; [HW: 1.676302062389144253984341048635542392730712890625 774] 

; mpf : + 3045793716165648 774
; mpfd: + 3045793716165648 774 (1.66559e+233) class: Pos. norm. non-zero
; hwf : + 3045793716165648 774 (1.66559e+233) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000101 #b1010110100100010001000011100100000101101110000010000)))
(assert (= r (fp #b0 #b11100000101 #b1010110100100010001000011100100000101101110000010000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
