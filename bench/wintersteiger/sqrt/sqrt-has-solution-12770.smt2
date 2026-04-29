(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5782029925725955532556099569774232804775238037109375p349 {+ 2603994781894447 349 (1.8098e+105)}
; 1.5782029925725955532556099569774232804775238037109375p349 S == 1.7766277002076691360343829728662967681884765625p174
; [HW: 1.7766277002076691360343829728662967681884765625p174] 

; mpf : + 3497620221260864 174
; mpfd: + 3497620221260864 174 (4.25418e+052) class: Pos. norm. non-zero
; hwf : + 3497620221260864 174 (4.25418e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011100 #b1001010000000101000111000111111110001100011100101111)))
(assert (= r (fp #b0 #b10010101101 #b1100011011010001000100101010110110001111010001000000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
