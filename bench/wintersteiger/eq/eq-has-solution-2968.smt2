(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.144185152003987848701171969878487288951873779296875p-432 {+ 649352196837518 -432 (1.03166e-130)}
; Y = -1.9541528958997875786707254519569687545299530029296875p574 {- 4297122626428763 574 (-1.2083e+173)}
; 1.144185152003987848701171969878487288951873779296875p-432 = -1.9541528958997875786707254519569687545299530029296875p574 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001111 #b0010010011101001010100010111000001101101000010001110)))
(assert (= y (fp #b1 #b11000111101 #b1111010001000011010111010011101101000101111101011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
