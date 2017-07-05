(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.463293747339182271360868980991654098033905029296875p121 {+ 2086489547879822 121 (3.8901e+036)}
; Y = 1.7680755136578547581649445419316180050373077392578125p590 {+ 3459104597101917 590 (7.1647e+177)}
; 1.463293747339182271360868980991654098033905029296875p121 > 1.7680755136578547581649445419316180050373077392578125p590 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111000 #b0111011010011010011010110100010101000011010110001110)))
(assert (= y (fp #b0 #b11001001101 #b1100010010100000100110001100110000000100110101011101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
