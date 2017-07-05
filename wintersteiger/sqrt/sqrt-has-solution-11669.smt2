(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2910264854369726261751338824979029595851898193359375p-295 {+ 1310666771368895 -295 (2.02809e-089)}
; 1.2910264854369726261751338824979029595851898193359375p-295 S == 1.6068767752612347354812527555623091757297515869140625p-148
; [HW: 1.6068767752612347354812527555623091757297515869140625p-148] 

; mpf : + 2733130018926305 -148
; mpfd: + 2733130018926305 -148 (4.50343e-045) class: Pos. norm. non-zero
; hwf : + 2733130018926305 -148 (4.50343e-045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011000 #b0100101010000000101101100011010100111000101110111111)))
(assert (= r (fp #b0 #b01101101011 #b1001101101011100010001101011111001110010111011100001)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
