(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.117332564537424133277454529888927936553955078125p192 {+ 528418893929168 192 (7.01361e+057)}
; Y = -1.4130722910960347160624905882286839187145233154296875p-149 {- 1860312216257179 -149 (-1.98014e-045)}
; 1.117332564537424133277454529888927936553955078125p192 < -1.4130722910960347160624905882286839187145233154296875p-149 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010111111 #b0001111000001001100000011100011101110001101011010000)))
(assert (= y (fp #b1 #b01101101010 #b0110100110111111000110110000110100100100001010011011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
