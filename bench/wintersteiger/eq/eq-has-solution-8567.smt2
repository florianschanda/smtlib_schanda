(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.336927050907945169200274904142133891582489013671875p908 {+ 1517384540920062 908 (2.89297e+273)}
; Y = -1.7703527606972297991916320825112052261829376220703125p-757 {- 3469360406019877 -757 (-2.33536e-228)}
; 1.336927050907945169200274904142133891582489013671875p908 = -1.7703527606972297991916320825112052261829376220703125p-757 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110001011 #b0101011001000000110110011110100011001001100011111110)))
(assert (= y (fp #b1 #b00100001010 #b1100010100110101110101101010100110010011111100100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
