(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.882939862300037958675602567382156848907470703125p-700 {+ 3976407634845008 -700 (3.57964e-211)}
; 1.882939862300037958675602567382156848907470703125p-700 | == 1.882939862300037958675602567382156848907470703125p-700
; [HW: 1.882939862300037958675602567382156848907470703125p-700] 

; mpf : + 3976407634845008 -700
; mpfd: + 3976407634845008 -700 (3.57964e-211) class: Pos. norm. non-zero
; hwf : + 3976407634845008 -700 (3.57964e-211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000011 #b1110001000001000010110001100100011101001110101010000)))
(assert (= r (fp #b0 #b00101000011 #b1110001000001000010110001100100011101001110101010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
