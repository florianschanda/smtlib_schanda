(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8892238994520373918106770361191593110561370849609375p611 {+ 4004708422221135 611 (1.6055e+184)}
; Y = -1.7981175980726560315048345728428103029727935791015625p-888 {- 3594402117277849 -888 (-8.71329e-268)}
; 1.8892238994520373918106770361191593110561370849609375p611 + -1.7981175980726560315048345728428103029727935791015625p-888 == 1.8892238994520373918106770361191593110561370849609375p611
; [HW: 1.8892238994520373918106770361191593110561370849609375p611] 

; mpf : + 4004708422221135 611
; mpfd: + 4004708422221135 611 (1.6055e+184) class: Pos. norm. non-zero
; hwf : + 4004708422221135 611 (1.6055e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100010 #b1110001110100100001011010110111011110111110101001111)))
(assert (= y (fp #b1 #b00010000111 #b1100110001010001011011110101011000010101100010011001)))
(assert (= r (fp #b0 #b11001100010 #b1110001110100100001011010110111011110111110101001111)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
