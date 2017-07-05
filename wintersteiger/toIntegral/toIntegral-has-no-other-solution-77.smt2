(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1312923113227777438538623755448497831821441650390625 280 {+ 591288004349873 280 (2.19773e+084)}
; 1.1312923113227777438538623755448497831821441650390625 280 I == 1.1312923113227777438538623755448497831821441650390625 280
; [HW: 1.1312923113227777438538623755448497831821441650390625 280] 

; mpf : + 591288004349873 280
; mpfd: + 591288004349873 280 (2.19773e+084) class: Pos. norm. non-zero
; hwf : + 591288004349873 280 (2.19773e+084) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010111 #b0010000110011100010111110111011101011000111110110001)))
(assert (= r (fp #b0 #b10100010111 #b0010000110011100010111110111011101011000111110110001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
