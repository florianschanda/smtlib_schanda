(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.87407202478383538846173905767500400543212890625p-673 {+ 3936470445111456 -673 (4.78189e-203)}
; Y = 1.7371912960458530950091926570166833698749542236328125p784 {+ 3320014446172877 784 (1.76752e+236)}
; 1.87407202478383538846173905767500400543212890625p-673 < 1.7371912960458530950091926570166833698749542236328125p784 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011110 #b1101111111000011001011110010100011001011100010100000)))
(assert (= y (fp #b0 #b11100001111 #b1011110010111000100100011001101101101001101011001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
