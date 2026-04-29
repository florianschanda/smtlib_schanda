(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5135932408841339391614155829302035272121429443359375p449 {+ 2313018328265791 449 (2.20028e+135)}
; Y = 1.707471092048800986873402507626451551914215087890625p757 {+ 3186166546526378 757 (1.29437e+228)}
; 1.5135932408841339391614155829302035272121429443359375p449 < 1.707471092048800986873402507626451551914215087890625p757 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111000000 #b1000001101111010110110001011110100001011010000111111)))
(assert (= y (fp #b0 #b11011110100 #b1011010100011100110100110101001100110111000010101010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
