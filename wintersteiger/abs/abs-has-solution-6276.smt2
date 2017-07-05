(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9616024766434125847780478579807095229625701904296875p-600 {- 4330672555489819 -600 (-4.7273e-181)}
; -1.9616024766434125847780478579807095229625701904296875p-600 | == 1.9616024766434125847780478579807095229625701904296875p-600
; [HW: 1.9616024766434125847780478579807095229625701904296875p-600] 

; mpf : + 4330672555489819 -600
; mpfd: + 4330672555489819 -600 (4.7273e-181) class: Pos. norm. non-zero
; hwf : + 4330672555489819 -600 (4.7273e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100111 #b1111011000101011100101000111010011101111101000011011)))
(assert (= r (fp #b0 #b00110100111 #b1111011000101011100101000111010011101111101000011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
