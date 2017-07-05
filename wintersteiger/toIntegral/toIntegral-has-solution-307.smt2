(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9742639666468286829825729000731371343135833740234375 657 {+ 4387694837151159 657 (1.18063e+198)}
; 1.9742639666468286829825729000731371343135833740234375 657 I == 1.9742639666468286829825729000731371343135833740234375 657
; [HW: 1.9742639666468286829825729000731371343135833740234375 657] 

; mpf : + 4387694837151159 657
; mpfd: + 4387694837151159 657 (1.18063e+198) class: Pos. norm. non-zero
; hwf : + 4387694837151159 657 (1.18063e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010000 #b1111100101101001010111010000001001101011010110110111)))
(assert (= r (fp #b0 #b11010010000 #b1111100101101001010111010000001001101011010110110111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
