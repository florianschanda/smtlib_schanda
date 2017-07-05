(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.615156045346387347905192655161954462528228759765625p483 {- 2770416536596698 483 (-4.03369e+145)}
; -1.615156045346387347905192655161954462528228759765625p483 | == 1.615156045346387347905192655161954462528228759765625p483
; [HW: 1.615156045346387347905192655161954462528228759765625p483] 

; mpf : + 2770416536596698 483
; mpfd: + 2770416536596698 483 (4.03369e+145) class: Pos. norm. non-zero
; hwf : + 2770416536596698 483 (4.03369e+145) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111100010 #b1001110101111010110111011101100010110011000011011010)))
(assert (= r (fp #b0 #b10111100010 #b1001110101111010110111011101100010110011000011011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
