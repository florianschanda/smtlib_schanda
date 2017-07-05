(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1035746152789129848059701544116251170635223388671875p783 {- 466458598775155 783 (-5.61421e+235)}
; Y = -1.360980188823637693218415734008885920047760009765625p175 {- 1625710243874266 175 (-6.5178e+052)}
; -1.1035746152789129848059701544116251170635223388671875p783 - -1.360980188823637693218415734008885920047760009765625p175 == -1.1035746152789129848059701544116251170635223388671875p783
; [HW: -1.1035746152789129848059701544116251170635223388671875p783] 

; mpf : - 466458598775155 783
; mpfd: - 466458598775155 783 (-5.61421e+235) class: Neg. norm. non-zero
; hwf : - 466458598775155 783 (-5.61421e+235) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001110 #b0001101010000011110111011011000101010001100101110011)))
(assert (= y (fp #b1 #b10010101110 #b0101110001101001001100101001100110000000010111011010)))
(assert (= r (fp #b1 #b11100001110 #b0001101010000011110111011011000101010001100101110011)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
