(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1849576545772320113059095092467032372951507568359375p1002 {- 832975224233343 1002 (-5.07877e+301)}
; -1.1849576545772320113059095092467032372951507568359375p1002 | == 1.1849576545772320113059095092467032372951507568359375p1002
; [HW: 1.1849576545772320113059095092467032372951507568359375p1002] 

; mpf : + 832975224233343 1002
; mpfd: + 832975224233343 1002 (5.07877e+301) class: Pos. norm. non-zero
; hwf : + 832975224233343 1002 (5.07877e+301) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111101001 #b0010111101011001011000101000010110001101110101111111)))
(assert (= r (fp #b0 #b11111101001 #b0010111101011001011000101000010110001101110101111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
