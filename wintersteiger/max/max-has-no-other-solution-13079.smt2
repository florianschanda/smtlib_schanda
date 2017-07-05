(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.699407518393357907626750602503307163715362548828125p990 {+ 3149851439216450 990 (1.77825e+298)}
; Y = +zero {+ 0 -1023 (0)}
; 1.699407518393357907626750602503307163715362548828125p990 M +zero == 1.699407518393357907626750602503307163715362548828125p990
; [HW: 1.699407518393357907626750602503307163715362548828125p990] 

; mpf : + 3149851439216450 990
; mpfd: + 3149851439216450 990 (1.77825e+298) class: Pos. norm. non-zero
; hwf : + 3149851439216450 990 (1.77825e+298) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011101 #b1011001100001100010111110000001000010011011101000010)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b11111011101 #b1011001100001100010111110000001000010011011101000010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
