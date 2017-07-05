(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.919821127067038002422805220703594386577606201171875p475 {- 4142506085106622 475 (-1.87287e+143)}
; Y = 1.3670326938903853974949242910952307283878326416015625p217 {+ 1652968303437529 217 (2.87931e+065)}
; -1.919821127067038002422805220703594386577606201171875p475 < 1.3670326938903853974949242910952307283878326416015625p217 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111011010 #b1110101101111001011001011011101011101100001110111110)))
(assert (= y (fp #b0 #b10011011000 #b0101110111110101110110101100100011010010011011011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
