(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.341426863940800018326626741327345371246337890625p-252 {+ 1537649897218064 -252 (1.85357e-076)}
; 1.341426863940800018326626741327345371246337890625p-252 | == 1.341426863940800018326626741327345371246337890625p-252
; [HW: 1.341426863940800018326626741327345371246337890625p-252] 

; mpf : + 1537649897218064 -252
; mpfd: + 1537649897218064 -252 (1.85357e-076) class: Pos. norm. non-zero
; hwf : + 1537649897218064 -252 (1.85357e-076) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000011 #b0101011101100111110000000011111010011010000000010000)))
(assert (= r (fp #b0 #b01100000011 #b0101011101100111110000000011111010011010000000010000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
