(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6676479795067236100436502965749241411685943603515625p12 {- 3006819191721145 12 (-6830.69)}
; Y = -1.128178901818716273197651389637030661106109619140625p658 {- 577266454467530 658 (-1.34932e+198)}
; -1.6676479795067236100436502965749241411685943603515625p12 < -1.128178901818716273197651389637030661106109619140625p658 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001011 #b1010101011101010111110100101110100111000110010111001)))
(assert (= y (fp #b1 #b11010010001 #b0010000011010000010101010001111101011001001111001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
