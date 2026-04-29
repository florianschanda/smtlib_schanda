(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.51826768216277940837244386784732341766357421875p697 {+ 2334070140266464 697 (9.98287e+209)}
; Y = 1.1165425803712529795319596814806573092937469482421875p376 {+ 524861121532771 376 (1.71852e+113)}
; 1.51826768216277940837244386784732341766357421875p697 = 1.1165425803712529795319596814806573092937469482421875p376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010111000 #b1000010010101101001100001101100101110110011111100000)))
(assert (= y (fp #b0 #b10101110111 #b0001110111010101101111000000101101001001001101100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
