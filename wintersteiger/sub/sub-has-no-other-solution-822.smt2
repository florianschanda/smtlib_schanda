(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.1465423909195002760696979748900048434734344482421875p-704 {+ 659968257139043 -704 (1.3623e-212)}
; +zero - 1.1465423909195002760696979748900048434734344482421875p-704 == -1.1465423909195002760696979748900048434734344482421875p-704
; [HW: -1.1465423909195002760696979748900048434734344482421875p-704] 

; mpf : - 659968257139043 -704
; mpfd: - 659968257139043 -704 (-1.3623e-212) class: Neg. norm. non-zero
; hwf : - 659968257139043 -704 (-1.3623e-212) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00100111111 #b0010010110000011110011010101100001111010000101100011)))
(assert (= r (fp #b1 #b00100111111 #b0010010110000011110011010101100001111010000101100011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
