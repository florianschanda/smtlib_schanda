(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1698968129601599041933468470233492553234100341796875p379 {+ 765147223538811 379 (1.44051e+114)}
; Y = -1.388386742001145979230614102561958134174346923828125p-838 {- 1749138386552002 -838 (-7.57485e-253)}
; 1.1698968129601599041933468470233492553234100341796875p379 + -1.388386742001145979230614102561958134174346923828125p-838 == 1.1698968129601599041933468470233492553234100341796875p379
; [HW: 1.1698968129601599041933468470233492553234100341796875p379] 

; mpf : + 765147223538811 379
; mpfd: + 765147223538811 379 (1.44051e+114) class: Pos. norm. non-zero
; hwf : + 765147223538811 379 (1.44051e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111010 #b0010101101111110010110111000011101011011110001111011)))
(assert (= y (fp #b1 #b00010111001 #b0110001101101101010100000100001100011000010011000010)))
(assert (= r (fp #b0 #b10101111010 #b0010101101111110010110111000011101011011110001111011)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
