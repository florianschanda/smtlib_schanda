(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3319747865455477953133822666131891310214996337890625 6 {+ 1495081524982929 6 (85.2464)}
; 1.3319747865455477953133822666131891310214996337890625 6 I == 1.328125 6
; [HW: 1.328125 6] 

; mpf : + 1477743627730944 6
; mpfd: + 1477743627730944 6 (85) class: Pos. norm. non-zero
; hwf : + 1477743627730944 6 (85) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000101 #b0101010011111100010011001011001101001111010010010001)))
(assert (= r (fp #b0 #b10000000101 #b0101010000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
