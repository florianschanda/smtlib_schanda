(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.344499449726741513444494557916186749935150146484375p-508 {- 1551487593418694 -508 (-1.60444e-153)}
; Y = -1.306654035930559398792638603481464087963104248046875p803 {- 1381047001948526 803 (-6.97023e+241)}
; -1.344499449726741513444494557916186749935150146484375p-508 = -1.306654035930559398792638603481464087963104248046875p803 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000000011 #b0101100000110001000111011010111000010000111111000110)))
(assert (= y (fp #b1 #b11100100010 #b0100111010000000111000001111111110000010000101101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
