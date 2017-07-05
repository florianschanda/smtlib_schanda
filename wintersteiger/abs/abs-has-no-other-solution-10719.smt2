(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5948608817491407574351569564896635711193084716796875p-587 {- 2679015245382715 -587 (-3.14858e-177)}
; -1.5948608817491407574351569564896635711193084716796875p-587 | == 1.5948608817491407574351569564896635711193084716796875p-587
; [HW: 1.5948608817491407574351569564896635711193084716796875p-587] 

; mpf : + 2679015245382715 -587
; mpfd: + 2679015245382715 -587 (3.14858e-177) class: Pos. norm. non-zero
; hwf : + 2679015245382715 -587 (3.14858e-177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110100 #b1001100001001000110011011000000011001000010000111011)))
(assert (= r (fp #b0 #b00110110100 #b1001100001001000110011011000000011001000010000111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
