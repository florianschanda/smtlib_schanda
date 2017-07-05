(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0435614746041366185380638853530399501323699951171875p-1021 {+ 196183440794899 -1021 (4.644e-308)}
; Y = 1.108888686941244205996781602152623236179351806640625p697 {+ 490391049933450 697 (7.29113e+209)}
; 1.0435614746041366185380638853530399501323699951171875p-1021 % 1.108888686941244205996781602152623236179351806640625p697 == 1.0435614746041366185380638853530399501323699951171875p-1021
; [HW: 1.0435614746041366185380638853530399501323699951171875p-1021] 

; mpf : + 196183440794899 -1021
; mpfd: + 196183440794899 -1021 (4.644e-308) class: Pos. norm. non-zero
; hwf : + 196183440794899 -1021 (4.644e-308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000010 #b0000101100100110110110000100010011001010010100010011)))
(assert (= y (fp #b0 #b11010111000 #b0001101111100000001000010000010101010001001010001010)))
(assert (= r (fp #b0 #b00000000010 #x0b26d844ca513)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
