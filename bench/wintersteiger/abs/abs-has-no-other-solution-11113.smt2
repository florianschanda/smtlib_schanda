(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.51027374360864996560849249362945556640625p-345 {- 2298068641572864 -345 (-2.10721e-104)}
; -1.51027374360864996560849249362945556640625p-345 | == 1.51027374360864996560849249362945556640625p-345
; [HW: 1.51027374360864996560849249362945556640625p-345] 

; mpf : + 2298068641572864 -345
; mpfd: + 2298068641572864 -345 (2.10721e-104) class: Pos. norm. non-zero
; hwf : + 2298068641572864 -345 (2.10721e-104) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100110 #b1000001010100001010011001101000011001110100000000000)))
(assert (= r (fp #b0 #b01010100110 #b1000001010100001010011001101000011001110100000000000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
