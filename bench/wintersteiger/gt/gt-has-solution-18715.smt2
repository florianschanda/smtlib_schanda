(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9800533541607034937470643853885121643543243408203125p-173 {- 4413767920601349 -173 (-1.65382e-052)}
; Y = -1.8185624069920944823053332584095187485218048095703125p-44 {- 3686477351109093 -44 (-1.03373e-013)}
; -1.9800533541607034937470643853885121643543243408203125p-173 > -1.8185624069920944823053332584095187485218048095703125p-44 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101010010 #b1111101011100100110001101101000001110100100100000101)))
(assert (= y (fp #b1 #b01111010011 #b1101000110001101010011100100111111000100000111100101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
