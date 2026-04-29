(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3846586243603129506851701080449856817722320556640625p193 {- 1732348437333953 193 (-1.73833e+058)}
; Y = 1.400235455862191447096165575203485786914825439453125p11 {+ 1802500249881426 11 (2867.68)}
; -1.3846586243603129506851701080449856817722320556640625p193 < 1.400235455862191447096165575203485786914825439453125p11 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011000000 #b0110001001111000111111001101001111000000011111000001)))
(assert (= y (fp #b0 #b10000001010 #b0110011001110101110101001011000110100000101101010010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
