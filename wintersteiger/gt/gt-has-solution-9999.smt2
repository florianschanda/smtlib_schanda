(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7390384811157080235943794832564890384674072265625p645 {+ 3328333428165160 645 (2.53896e+194)}
; Y = -1.7408389342707060176707045684452168643474578857421875p835 {- 3336441948323107 835 (-3.98846e+251)}
; 1.7390384811157080235943794832564890384674072265625p645 > -1.7408389342707060176707045684452168643474578857421875p835 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000100 #b1011110100110001101000000011101011100000101000101000)))
(assert (= y (fp #b1 #b11101000010 #b1011110110100111100111101101001001001011110100100011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
