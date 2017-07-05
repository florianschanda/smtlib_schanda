(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.782782099897825656142913430812768638134002685546875p526 {- 3525337173412142 526 (-3.9163e+158)}
; Y = 1.8392974509066510879762290642247535288333892822265625p804 {+ 3779859687156201 804 (1.96231e+242)}
; -1.782782099897825656142913430812768638134002685546875p526 - 1.8392974509066510879762290642247535288333892822265625p804 == -1.8392974509066510879762290642247535288333892822265625p804
; [HW: -1.8392974509066510879762290642247535288333892822265625p804] 

; mpf : - 3779859687156201 804
; mpfd: - 3779859687156201 804 (-1.96231e+242) class: Neg. norm. non-zero
; hwf : - 3779859687156201 804 (-1.96231e+242) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000001101 #b1100100001100100011010000101111011110100100100101110)))
(assert (= y (fp #b0 #b11100100011 #b1101011011011100001100101001111101000010100111101001)))
(assert (= r (fp #b1 #b11100100011 #b1101011011011100001100101001111101000010100111101001)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
