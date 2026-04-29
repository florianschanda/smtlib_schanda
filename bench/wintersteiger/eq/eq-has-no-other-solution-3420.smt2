(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5623706342586543005523935789824463427066802978515625p-340 {- 2532692178891385 -340 (-6.97566e-103)}
; Y = -1.11173072823185759006037187646143138408660888671875p-613 {- 503190466030828 -613 (-3.27049e-185)}
; -1.5623706342586543005523935789824463427066802978515625p-340 = -1.11173072823185759006037187646143138408660888671875p-613 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010101011 #b1000111111110111100001011001101001011111001001111001)))
(assert (= y (fp #b1 #b00110011010 #b0001110010011010011000101000111110110110110011101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
