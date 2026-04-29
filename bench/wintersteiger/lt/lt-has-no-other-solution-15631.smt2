(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1756882964874602048865881442907266318798065185546875p-106 {+ 791229746594283 -106 (1.44915e-032)}
; Y = -1.399190796185809659846199792809784412384033203125p-535 {- 1797795520952144 -535 (-1.24403e-161)}
; 1.1756882964874602048865881442907266318798065185546875p-106 < -1.399190796185809659846199792809784412384033203125p-535 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010101 #b0010110011111001111010000111111110110100000111101011)))
(assert (= y (fp #b1 #b00111101000 #b0110011000110001010111100011011001111011011101010000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
