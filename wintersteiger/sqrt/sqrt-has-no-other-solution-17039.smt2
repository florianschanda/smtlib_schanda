(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.95992645834524381598384934477508068084716796875p-15 {+ 4323124440106720 -15 (5.98122e-005)}
; 1.95992645834524381598384934477508068084716796875p-15 S == 1.979861842829061746584784486913122236728668212890625p-8
; [HW: 1.979861842829061746584784486913122236728668212890625p-8] 

; mpf : + 4412905430239530 -8
; mpfd: + 4412905430239530 -8 (0.00773384) class: Pos. norm. non-zero
; hwf : + 4412905430239530 -8 (0.00773384) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110000 #b1111010110111101101111011000100100101000011011100000)))
(assert (= r (fp #b0 #b01111110111 #b1111101011011000001110011100100110001100100100101010)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
