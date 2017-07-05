(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.627429119478161378964387040468864142894744873046875p1000 {+ 2825689548683246 1000 (1.7438e+301)}
; Y = 1.195512061704171902221105483477003872394561767578125p926 {+ 880508048237346 926 (6.78157e+278)}
; 1.627429119478161378964387040468864142894744873046875p1000 < 1.195512061704171902221105483477003872394561767578125p926 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111100111 #b1010000010011111001100011101110010110111011111101110)))
(assert (= y (fp #b0 #b11110011101 #b0011001000001101000101000001011011111110001100100010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
