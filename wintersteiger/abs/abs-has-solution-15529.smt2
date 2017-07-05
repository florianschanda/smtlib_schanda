(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6878606729003509112629899391322396695613861083984375p386 {+ 3097849070156839 386 (2.6602e+116)}
; 1.6878606729003509112629899391322396695613861083984375p386 | == 1.6878606729003509112629899391322396695613861083984375p386
; [HW: 1.6878606729003509112629899391322396695613861083984375p386] 

; mpf : + 3097849070156839 386
; mpfd: + 3097849070156839 386 (2.6602e+116) class: Pos. norm. non-zero
; hwf : + 3097849070156839 386 (2.6602e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000001 #b1011000000010111101000110001011001001111110000100111)))
(assert (= r (fp #b0 #b10110000001 #b1011000000010111101000110001011001001111110000100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
