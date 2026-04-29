(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.355333273919426151365996702224947512149810791015625p989 {+ 1600278800015866 989 (7.09107e+297)}
; Y = 1.2322775984660816472882061134441755712032318115234375p-512 {+ 1046085305898359 -512 (9.19075e-155)}
; 1.355333273919426151365996702224947512149810791015625p989 = 1.2322775984660816472882061134441755712032318115234375p-512 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011100 #b0101101011110111000111110001011010101010000111111010)))
(assert (= y (fp #b0 #b00111111111 #b0011101101110110100010110111000100000001010101110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
