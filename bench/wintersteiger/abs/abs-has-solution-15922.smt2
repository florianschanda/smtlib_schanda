(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6571262336780279156300821341574192047119140625p-292 {+ 2959433461127744 -292 (2.08256e-088)}
; 1.6571262336780279156300821341574192047119140625p-292 | == 1.6571262336780279156300821341574192047119140625p-292
; [HW: 1.6571262336780279156300821341574192047119140625p-292] 

; mpf : + 2959433461127744 -292
; mpfd: + 2959433461127744 -292 (2.08256e-088) class: Pos. norm. non-zero
; hwf : + 2959433461127744 -292 (2.08256e-088) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011011 #b1010100000111001011011001100001011111101101001000000)))
(assert (= r (fp #b0 #b01011011011 #b1010100000111001011011001100001011111101101001000000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
