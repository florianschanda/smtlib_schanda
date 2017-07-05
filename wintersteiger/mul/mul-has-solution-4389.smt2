(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4786347980761951337314030752168036997318267822265625p475 {+ 2155579498262505 475 (1.44248e+143)}
; Y = -1.5258972623951880809300973851350136101245880126953125p691 {- 2368430714958133 691 (-1.56766e+208)}
; 1.4786347980761951337314030752168036997318267822265625p475 * -1.5258972623951880809300973851350136101245880126953125p691 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011010 #b0111101010000111110011110110010001110110111111101001)))
(assert (= y (fp #b1 #b11010110010 #b1000011010100001001100111111011100001011000100110101)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
