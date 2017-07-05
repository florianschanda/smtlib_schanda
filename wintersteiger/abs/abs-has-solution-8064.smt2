(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.68111496230190393674774895771406590938568115234375p-136 {+ 3067469090419324 -136 (1.92983e-041)}
; 1.68111496230190393674774895771406590938568115234375p-136 | == 1.68111496230190393674774895771406590938568115234375p-136
; [HW: 1.68111496230190393674774895771406590938568115234375p-136] 

; mpf : + 3067469090419324 -136
; mpfd: + 3067469090419324 -136 (1.92983e-041) class: Pos. norm. non-zero
; hwf : + 3067469090419324 -136 (1.92983e-041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101110111 #b1010111001011101100011001101011111100111001001111100)))
(assert (= r (fp #b0 #b01101110111 #b1010111001011101100011001101011111100111001001111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
