(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1482574258970010827596297531272284686565399169921875p635 {+ 667692088024643 635 (1.63714e+191)}
; 1.1482574258970010827596297531272284686565399169921875p635 S == 1.5154256338712241980459793921909295022487640380859375p317
; [HW: 1.5154256338712241980459793921909295022487640380859375p317] 

; mpf : + 2321270692639647 317
; mpfd: + 2321270692639647 317 (4.04616e+095) class: Pos. norm. non-zero
; hwf : + 2321270692639647 317 (4.04616e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111010 #b0010010111110100001100101101101110011101111001000011)))
(assert (= r (fp #b0 #b10100111100 #b1000001111110010111011110011000011111111001110011111)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
