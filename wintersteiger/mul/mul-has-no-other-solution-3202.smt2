(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.020849708294753188653203324065543711185455322265625p-1022 {- 93898738507034 -1023 (-4.63921e-310)}
; Y = -1.0332735190414192860686171115958131849765777587890625p-54 {- 149850607956241 -54 (-5.73582e-017)}
; -0.020849708294753188653203324065543711185455322265625p-1022 * -1.0332735190414192860686171115958131849765777587890625p-54 == 0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: 0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : + 1 -1023
; mpfd: + 1 -1023 (4.94066e-324) class: Pos. denorm.
; hwf : + 1 -1023 (4.94066e-324) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000010101010110011010000000111101000001110100011010)))
(assert (= y (fp #b1 #b01111001001 #b0000100010000100100111010000010000011011000100010001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
