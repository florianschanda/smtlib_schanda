(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8861399774652805039210079485201276838779449462890625p-953 {+ 3990819672310737 -953 (2.47735e-287)}
; 1.8861399774652805039210079485201276838779449462890625p-953 | == 1.8861399774652805039210079485201276838779449462890625p-953
; [HW: 1.8861399774652805039210079485201276838779449462890625p-953] 

; mpf : + 3990819672310737 -953
; mpfd: + 3990819672310737 -953 (2.47735e-287) class: Pos. norm. non-zero
; hwf : + 3990819672310737 -953 (2.47735e-287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000110 #b1110001011011010000100011100111011100100001111010001)))
(assert (= r (fp #b0 #b00001000110 #b1110001011011010000100011100111011100100001111010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
