(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9095582055861852754929941511363722383975982666015625p734 {- 4096285995749721 734 (-1.72564e+221)}
; Y = 1.4853280003040143508741266487049870193004608154296875p737 {+ 2185723001321627 737 (1.07381e+222)}
; -1.9095582055861852754929941511363722383975982666015625p734 > 1.4853280003040143508741266487049870193004608154296875p737 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011101 #b1110100011011000110011100111101011001101000101011001)))
(assert (= y (fp #b0 #b11011100000 #b0111110000111110011101001011000100100011100010011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
