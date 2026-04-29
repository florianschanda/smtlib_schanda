(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5886247308562124747055577245191670954227447509765625p509 {+ 2650930118545097 509 (2.6625e+153)}
; Y = -1.788056450895492144326226480188779532909393310546875p-226 {- 3549090738599854 -226 (-1.65807e-068)}
; 1.5886247308562124747055577245191670954227447509765625p509 = -1.788056450895492144326226480188779532909393310546875p-226 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111100 #b1001011010110000000111000100000010100100111011001001)))
(assert (= y (fp #b1 #b01100011101 #b1100100110111110000100010100101111111111011110101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
