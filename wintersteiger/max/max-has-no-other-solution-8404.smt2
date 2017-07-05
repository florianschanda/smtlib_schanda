(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.768336209962480420898600641521625220775604248046875p243 {+ 3460278668882286 243 (2.4995e+073)}
; Y = -1.4752802514067850925272296080947853624820709228515625p-653 {- 2140471963132153 -653 (-3.94718e-197)}
; 1.768336209962480420898600641521625220775604248046875p243 M -1.4752802514067850925272296080947853624820709228515625p-653 == 1.768336209962480420898600641521625220775604248046875p243
; [HW: 1.768336209962480420898600641521625220775604248046875p243] 

; mpf : + 3460278668882286 243
; mpfd: + 3460278668882286 243 (2.4995e+073) class: Pos. norm. non-zero
; hwf : + 3460278668882286 243 (2.4995e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110010 #b1100010010110001101011101000111000011111000101101110)))
(assert (= y (fp #b1 #b00101110010 #b0111100110101011111101110111000000111010000011111001)))
(assert (= r (fp #b0 #b10011110010 #b1100010010110001101011101000111000011111000101101110)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
