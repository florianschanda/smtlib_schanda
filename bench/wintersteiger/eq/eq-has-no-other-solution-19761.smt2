(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.78242000027378910687048119143582880496978759765625p96 {- 3523706421680260 96 (-1.41218e+029)}
; Y = 1.9025427150694314004653051597415469586849212646484375p-1003 {+ 4064691035272647 -1003 (2.21947e-302)}
; -1.78242000027378910687048119143582880496978759765625p96 = 1.9025427150694314004653051597415469586849212646484375p-1003 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011111 #b1100100001001100101011010101100011101001100010000100)))
(assert (= y (fp #b0 #b00000010100 #b1110011100001101000010100001010001110111010111000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
