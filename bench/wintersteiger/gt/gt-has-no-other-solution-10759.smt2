(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4262341051147775505825165964779444038867950439453125p611 {+ 1919587756967509 611 (1.21204e+184)}
; Y = -1.37018112241027889552924534655176103115081787109375p208 {- 1667147564946524 208 (-5.6366e+062)}
; 1.4262341051147775505825165964779444038867950439453125p611 > -1.37018112241027889552924534655176103115081787109375p208 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100010 #b0110110100011101101011011010010111101000011001010101)))
(assert (= y (fp #b1 #b10011001111 #b0101111011000100001100001010011001011001010001011100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
