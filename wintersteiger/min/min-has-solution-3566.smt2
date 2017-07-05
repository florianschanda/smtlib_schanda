(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6766022716918944635011712307459674775600433349609375p88 {+ 3047145738669647 88 (5.18883e+026)}
; Y = 1.4857477901109710227700588802690617740154266357421875p258 {+ 2187613566539811 258 (6.88151e+077)}
; 1.6766022716918944635011712307459674775600433349609375p88 m 1.4857477901109710227700588802690617740154266357421875p258 == 1.6766022716918944635011712307459674775600433349609375p88
; [HW: 1.6766022716918944635011712307459674775600433349609375p88] 

; mpf : + 3047145738669647 88
; mpfd: + 3047145738669647 88 (5.18883e+026) class: Pos. norm. non-zero
; hwf : + 3047145738669647 88 (5.18883e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010111 #b1010110100110101110011100111010101010000111001001111)))
(assert (= y (fp #b0 #b10100000001 #b0111110001011001111101111001100010100001100000100011)))
(assert (= r (fp #b0 #b10001010111 #b1010110100110101110011100111010101010000111001001111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
