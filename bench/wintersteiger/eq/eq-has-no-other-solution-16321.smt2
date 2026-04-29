(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.32968742554900121177752225776202976703643798828125p-385 {- 1484780166851220 -385 (-1.68733e-116)}
; Y = 1.3394413724193448000931994101847521960735321044921875p-13 {+ 1528708038341891 -13 (0.000163506)}
; -1.32968742554900121177752225776202976703643798828125p-385 = 1.3394413724193448000931994101847521960735321044921875p-13 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111110 #b0101010001100110011001010010011010100010101010010100)))
(assert (= y (fp #b0 #b01111110010 #b0101011011100101101000010011100101110011010100000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
