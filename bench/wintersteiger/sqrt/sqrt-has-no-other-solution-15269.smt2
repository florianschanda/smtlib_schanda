(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0163878370554300101247235943446867167949676513671875p408 {+ 73804256856243 408 (6.71889e+122)}
; 1.0163878370554300101247235943446867167949676513671875p408 S == 1.0081606206629130095819846246740780770778656005859375p204
; [HW: 1.0081606206629130095819846246740780770778656005859375p204] 

; mpf : + 36752168176607 204
; mpfd: + 36752168176607 204 (2.59208e+061) class: Pos. norm. non-zero
; hwf : + 36752168176607 204 (2.59208e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010111 #b0000010000110001111111100100100000110100100010110011)))
(assert (= r (fp #b0 #b10011001011 #b0000001000010110110100000111111011011100101111011111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
