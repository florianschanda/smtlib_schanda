(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.80571753708274851391024640179239213466644287109375p290 {- 3628629199771740 290 (-3.5921e+087)}
; Y = -1.71213686248761920438710149028338491916656494140625p454 {- 3207179308536036 454 (-7.96446e+136)}
; -1.80571753708274851391024640179239213466644287109375p290 = -1.71213686248761920438710149028338491916656494140625p454 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100001 #b1100111001000011100000010010011110010101100001011100)))
(assert (= y (fp #b1 #b10111000101 #b1011011001001110100110011111011010101001000011100100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
