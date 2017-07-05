(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.180439087158763555862606153823435306549072265625p-928 {+ 812625405691280 -928 (5.20245e-280)}
; 1.180439087158763555862606153823435306549072265625p-928 | == 1.180439087158763555862606153823435306549072265625p-928
; [HW: 1.180439087158763555862606153823435306549072265625p-928] 

; mpf : + 812625405691280 -928
; mpfd: + 812625405691280 -928 (5.20245e-280) class: Pos. norm. non-zero
; hwf : + 812625405691280 -928 (5.20245e-280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011111 #b0010111000110001010000011000101001000100010110010000)))
(assert (= r (fp #b0 #b00001011111 #b0010111000110001010000011000101001000100010110010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
