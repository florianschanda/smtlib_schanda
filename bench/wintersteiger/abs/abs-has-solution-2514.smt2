(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2204566913839658415241729016997851431369781494140625p-646 {+ 992848673168161 -646 (4.1797e-195)}
; 1.2204566913839658415241729016997851431369781494140625p-646 | == 1.2204566913839658415241729016997851431369781494140625p-646
; [HW: 1.2204566913839658415241729016997851431369781494140625p-646] 

; mpf : + 992848673168161 -646
; mpfd: + 992848673168161 -646 (4.1797e-195) class: Pos. norm. non-zero
; hwf : + 992848673168161 -646 (4.1797e-195) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101111001 #b0011100001101111110110011000011110101101101100100001)))
(assert (= r (fp #b0 #b00101111001 #b0011100001101111110110011000011110101101101100100001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
