(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.021096136117241481855444362736307084560394287109375p-351 {+ 95008550756566 -351 (2.22607e-106)}
; 1.021096136117241481855444362736307084560394287109375p-351 S == 1.4290529284230457651716506006778217852115631103515625p-176
; [HW: 1.4290529284230457651716506006778217852115631103515625p-176] 

; mpf : + 1932282608568249 -176
; mpfd: + 1932282608568249 -176 (1.492e-053) class: Pos. norm. non-zero
; hwf : + 1932282608568249 -176 (1.492e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100000 #b0000010101100110100011100110111010110010000011010110)))
(assert (= r (fp #b0 #b01101001111 #b0110110111010110011010011010011111010100011110111001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
