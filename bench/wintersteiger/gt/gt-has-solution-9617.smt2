(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.93530164372945723272323448327369987964630126953125p-44 {+ 4212224134178996 -44 (1.10009e-013)}
; Y = -1.4617049197353433331869609901332296431064605712890625p1004 {- 2079334104475217 1004 (-2.50597e+302)}
; 1.93530164372945723272323448327369987964630126953125p-44 > -1.4617049197353433331869609901332296431064605712890625p1004 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010011 #b1110111101101111111011011011001110110110100010110100)))
(assert (= y (fp #b1 #b11111101011 #b0111011000110010010010110010101010101010011001010001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
