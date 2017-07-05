(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.973291885985014371129864230169914662837982177734375p888 {- 4383316975044838 888 (-4.07218e+267)}
; Y = 1.694455156185250555012089535011909902095794677734375p-506 {+ 3127547982621414 -506 (8.08821e-153)}
; -1.973291885985014371129864230169914662837982177734375p888 = 1.694455156185250555012089535011909902095794677734375p-506 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101110111 #b1111100100101001101010000011001111000100100011100110)))
(assert (= y (fp #b0 #b01000000101 #b1011000111000111110100000010100001011010101011100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
