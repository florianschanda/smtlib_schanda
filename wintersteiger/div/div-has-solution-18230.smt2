(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6267961066494065480725339511991478502750396728515625p790 {+ 2822838712343545 790 (1.05933e+238)}
; Y = 1.918729532934589254722368423244915902614593505859375p-874 {+ 4137589982178486 -874 (1.52334e-263)}
; 1.6267961066494065480725339511991478502750396728515625p790 / 1.918729532934589254722368423244915902614593505859375p-874 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010101 #b1010000001110101101101011010101101010001101111111001)))
(assert (= y (fp #b0 #b00010010101 #b1110101100110001110110111101000111010010110010110110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.div roundTowardPositive x y) r))
(check-sat)
(exit)
