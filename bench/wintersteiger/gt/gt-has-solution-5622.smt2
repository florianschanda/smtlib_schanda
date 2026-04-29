(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.74249296025336253279647280578501522541046142578125p219 {+ 3343891019122260 219 (1.46805e+066)}
; Y = 1.2158522605483284007021893557976000010967254638671875p-689 {+ 972112160172531 -689 (4.73384e-208)}
; 1.74249296025336253279647280578501522541046142578125p219 > 1.2158522605483284007021893557976000010967254638671875p-689 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011011010 #b1011111000010100000001001100010111001100011001010100)))
(assert (= y (fp #b0 #b00101001110 #b0011011101000010000101111111111111010010100111110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
