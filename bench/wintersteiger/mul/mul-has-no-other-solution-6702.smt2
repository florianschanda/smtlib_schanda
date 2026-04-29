(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.910107459415495867460776935331523418426513671875p-460 {- 4098759615090736 -460 (-6.41593e-139)}
; Y = 1.3867177997000121880688539022230543196201324462890625p-670 {+ 1741622138626513 -670 (2.83068e-202)}
; -1.910107459415495867460776935331523418426513671875p-460 * 1.3867177997000121880688539022230543196201324462890625p-670 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110011 #b1110100011111100110011010110111000001001000000110000)))
(assert (= y (fp #b0 #b00101100001 #b0110001011111111111100000000111001111110000111010001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
