(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1705989849179909700893631452345289289951324462890625p653 {+ 768309524906449 653 (4.37517e+196)}
; Y = 1.06278979957178965065622833208180963993072509765625p591 {+ 282780117954180 591 (8.6134e+177)}
; 1.1705989849179909700893631452345289289951324462890625p653 % 1.06278979957178965065622833208180963993072509765625p591 == 1.91820872126468344731620163656771183013916015625p589
; [HW: 1.91820872126468344731620163656771183013916015625p589] 

; mpf : + 4135244454935968 589
; mpfd: + 4135244454935968 589 (3.88654e+177) class: Pos. norm. non-zero
; hwf : + 4135244454935968 589 (3.88654e+177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001100 #b0010101110101100011000000000010011110100000111010001)))
(assert (= y (fp #b0 #b11001001110 #b0001000000010010111111100000011110101110111010000100)))
(assert (= r (fp #b0 #b11001001100 #xeb0fba0cbbda0)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
