(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.945978037339527677573869368643499910831451416015625p108 {- 4260306336462970 108 (-6.31506e+032)}
; -1.945978037339527677573869368643499910831451416015625p108 | == 1.945978037339527677573869368643499910831451416015625p108
; [HW: 1.945978037339527677573869368643499910831451416015625p108] 

; mpf : + 4260306336462970 108
; mpfd: + 4260306336462970 108 (6.31506e+032) class: Pos. norm. non-zero
; hwf : + 4260306336462970 108 (6.31506e+032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101011 #b1111001000101011100111011101110100011011100001111010)))
(assert (= r (fp #b0 #b10001101011 #b1111001000101011100111011101110100011011100001111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
