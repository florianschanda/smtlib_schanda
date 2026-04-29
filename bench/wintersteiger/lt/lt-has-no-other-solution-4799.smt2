(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8107106245793946897038040333427488803863525390625p-748 {- 3651116066761064 -748 (-1.22296e-225)}
; Y = -1.2139549840333445640538911902694962918758392333984375p100 {- 963567586366631 100 (-1.53887e+030)}
; -1.8107106245793946897038040333427488803863525390625p-748 < -1.2139549840333445640538911902694962918758392333984375p100 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100010011 #b1100111110001010101110110100001100010110100101101000)))
(assert (= y (fp #b1 #b10001100011 #b0011011011000101110000001111101100111101010010100111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
