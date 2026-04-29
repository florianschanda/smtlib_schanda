(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1127279897223958382568298475234769284725189208984375p-716 {- 507681732508007 -716 (-3.22784e-216)}
; Y = -1.1652233951310957404956525351735763251781463623046875p-382 {- 744100020745291 -382 (-1.18291e-115)}
; -1.1127279897223958382568298475234769284725189208984375p-716 > -1.1652233951310957404956525351735763251781463623046875p-382 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110011 #b0001110011011011101111011101010100110011100101100111)))
(assert (= y (fp #b1 #b01010000001 #b0010101001001100000101001001011010011111010001001011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
