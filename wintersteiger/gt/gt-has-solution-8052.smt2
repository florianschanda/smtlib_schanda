(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.996016405407086580225950456224381923675537109375p-478 {+ 4485659112246256 -478 (2.55756e-144)}
; Y = -1.6801990080872168942249800238641910254955291748046875p-869 {- 3063343999359371 -869 (-4.26869e-262)}
; 1.996016405407086580225950456224381923675537109375p-478 > -1.6801990080872168942249800238641910254955291748046875p-869 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100001 #b1111111011111010111011100101111110000000101111110000)))
(assert (= y (fp #b1 #b00010011010 #b1010111000100001100001011010111010000001100110001011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
