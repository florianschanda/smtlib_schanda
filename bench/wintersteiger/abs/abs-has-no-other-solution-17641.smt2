(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.371918255211662884818224483751691877841949462890625p-368 {+ 1674970915583530 -368 (2.28186e-111)}
; 1.371918255211662884818224483751691877841949462890625p-368 | == 1.371918255211662884818224483751691877841949462890625p-368
; [HW: 1.371918255211662884818224483751691877841949462890625p-368] 

; mpf : + 1674970915583530 -368
; mpfd: + 1674970915583530 -368 (2.28186e-111) class: Pos. norm. non-zero
; hwf : + 1674970915583530 -368 (2.28186e-111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001111 #b0101111100110110000010001110011011101011011000101010)))
(assert (= r (fp #b0 #b01010001111 #b0101111100110110000010001110011011101011011000101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
