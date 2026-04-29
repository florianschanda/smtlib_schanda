(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6997329529727063235355899450951255857944488525390625p-166 {+ 3151317066266737 -166 (1.81719e-050)}
; 1.6997329529727063235355899450951255857944488525390625p-166 | == 1.6997329529727063235355899450951255857944488525390625p-166
; [HW: 1.6997329529727063235355899450951255857944488525390625p-166] 

; mpf : + 3151317066266737 -166
; mpfd: + 3151317066266737 -166 (1.81719e-050) class: Pos. norm. non-zero
; hwf : + 3151317066266737 -166 (1.81719e-050) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011001 #b1011001100100001101100101110010011110011100001110001)))
(assert (= r (fp #b0 #b01101011001 #b1011001100100001101100101110010011110011100001110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
