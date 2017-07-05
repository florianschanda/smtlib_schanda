(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.71554402256827831507735027116723358631134033203125p565 {+ 3222523793405684 565 (2.07181e+170)}
; Y = -1.89266245092688389917157110176049172878265380859375p-574 {- 4020194281361948 -574 (-3.06095e-173)}
; 1.71554402256827831507735027116723358631134033203125p565 / -1.89266245092688389917157110176049172878265380859375p-574 == -1.9999999999999997779553950749686919152736663818359375p1023
; [HW: -1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : - 4503599627370495 1023
; mpfd: - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero
; hwf : - 4503599627370495 1023 (-1.79769e+308) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110100 #b1011011100101101111001001001111111000111011011110100)))
(assert (= y (fp #b1 #b00111000001 #b1110010010000101100001101100000100011001001000011100)))
(assert (= r (fp #b1 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
