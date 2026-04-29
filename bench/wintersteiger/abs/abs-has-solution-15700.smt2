(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7252656982938192609111638375907205045223236083984375p-767 {+ 3266306328580647 -767 (2.22254e-231)}
; 1.7252656982938192609111638375907205045223236083984375p-767 | == 1.7252656982938192609111638375907205045223236083984375p-767
; [HW: 1.7252656982938192609111638375907205045223236083984375p-767] 

; mpf : + 3266306328580647 -767
; mpfd: + 3266306328580647 -767 (2.22254e-231) class: Pos. norm. non-zero
; hwf : + 3266306328580647 -767 (2.22254e-231) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000000 #b1011100110101011000000110100011100010101001000100111)))
(assert (= r (fp #b0 #b00100000000 #b1011100110101011000000110100011100010101001000100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
