(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7287775066254058575765384375699795782566070556640625p234 {+ 3282122107274177 234 (4.77263e+070)}
; Y = -1.9249030495707930565885135365533642470836639404296875p796 {- 4165393029400859 796 (-8.02205e+239)}
; 1.7287775066254058575765384375699795782566070556640625p234 < -1.9249030495707930565885135365533642470836639404296875p796 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101001 #b1011101010010001001010011010010100000100001111000001)))
(assert (= y (fp #b1 #b11100011011 #b1110110011000110011100100011110111100000100100011011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
