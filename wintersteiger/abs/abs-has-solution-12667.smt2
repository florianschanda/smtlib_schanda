(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.198952114741407282139107337570749223232269287109375p759 {+ 896000669813974 759 (3.63554e+228)}
; 1.198952114741407282139107337570749223232269287109375p759 | == 1.198952114741407282139107337570749223232269287109375p759
; [HW: 1.198952114741407282139107337570749223232269287109375p759] 

; mpf : + 896000669813974 759
; mpfd: + 896000669813974 759 (3.63554e+228) class: Pos. norm. non-zero
; hwf : + 896000669813974 759 (3.63554e+228) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110110 #b0011001011101110100001101001101001001000110011010110)))
(assert (= r (fp #b0 #b11011110110 #b0011001011101110100001101001101001001000110011010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
