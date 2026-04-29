(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7173916271506295405657738228910602629184722900390625p-308 {+ 3230844664714289 -308 (3.2933e-093)}
; Y = -1.5143456282189970973917070296010933816432952880859375p810 {- 2316406779586719 810 (-1.034e+244)}
; 1.7173916271506295405657738228910602629184722900390625p-308 > -1.5143456282189970973917070296010933816432952880859375p810 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001011 #b1011011110100110111110100100100100001001010000110001)))
(assert (= y (fp #b1 #b11100101001 #b1000001110101100001001111011010000001010100010011111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
