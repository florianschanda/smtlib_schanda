(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5094527621094042668659085393301211297512054443359375p690 {+ 2294371269598783 690 (7.75383e+207)}
; Y = -1.691877829392551380038867137045599520206451416015625p-577 {- 3115940734638202 -577 (-3.42028e-174)}
; 1.5094527621094042668659085393301211297512054443359375p690 < -1.691877829392551380038867137045599520206451416015625p-577 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110001 #b1000001001101011011111110000100000011101111000111111)))
(assert (= y (fp #b1 #b00110111110 #b1011000100011110111001111100101000010001100001111010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
