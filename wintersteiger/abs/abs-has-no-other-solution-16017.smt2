(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7239158063452126867787228547967970371246337890625p-160 {+ 3260226955703912 -160 (1.17955e-048)}
; 1.7239158063452126867787228547967970371246337890625p-160 | == 1.7239158063452126867787228547967970371246337890625p-160
; [HW: 1.7239158063452126867787228547967970371246337890625p-160] 

; mpf : + 3260226955703912 -160
; mpfd: + 3260226955703912 -160 (1.17955e-048) class: Pos. norm. non-zero
; hwf : + 3260226955703912 -160 (1.17955e-048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011111 #b1011100101010010100010111101100101001111011001101000)))
(assert (= r (fp #b0 #b01101011111 #b1011100101010010100010111101100101001111011001101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
