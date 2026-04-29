(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.044063705491935056812735638231970369815826416015625p227 {+ 198445287634042 227 (2.25183e+068)}
; Y = -1.6648253799315051448814983814372681081295013427734375p750 {- 2994107333325975 750 (-9.85974e+225)}
; 1.044063705491935056812735638231970369815826416015625p227 > -1.6648253799315051448814983814372681081295013427734375p750 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100010 #b0000101101000111110000100100111000000111010001111010)))
(assert (= y (fp #b1 #b11011101101 #b1010101000110001111111110000000001011011010010010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
