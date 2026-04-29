(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6516062493833683078037211089394986629486083984375p889 {+ 2934573661915224 889 (6.81668e+267)}
; Y = 1.0372750247542104062858925317414104938507080078125p-609 {+ 167871787593288 -609 (4.88232e-184)}
; 1.6516062493833683078037211089394986629486083984375p889 = 1.0372750247542104062858925317414104938507080078125p-609 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101111000 #b1010011011001111101010101100101011111000100001011000)))
(assert (= y (fp #b0 #b00110011110 #b0000100110001010110110110010010001000110111001001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
