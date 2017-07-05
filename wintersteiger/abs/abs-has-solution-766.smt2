(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3340402480898616577320581200183369219303131103515625p-49 {- 1504383536824249 -49 (-2.36973e-015)}
; -1.3340402480898616577320581200183369219303131103515625p-49 | == 1.3340402480898616577320581200183369219303131103515625p-49
; [HW: 1.3340402480898616577320581200183369219303131103515625p-49] 

; mpf : + 1504383536824249 -49
; mpfd: + 1504383536824249 -49 (2.36973e-015) class: Pos. norm. non-zero
; hwf : + 1504383536824249 -49 (2.36973e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111001110 #b0101010110000011101010010110010100010111111110111001)))
(assert (= r (fp #b0 #b01111001110 #b0101010110000011101010010110010100010111111110111001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
