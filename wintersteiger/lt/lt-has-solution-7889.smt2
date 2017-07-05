(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7861847924382801000575682337512262165546417236328125p212 {+ 3540661538269389 212 (1.17567e+064)}
; Y = 1.157818510723454874522531099501065909862518310546875p-946 {+ 710751386086318 -946 (1.94655e-285)}
; 1.7861847924382801000575682337512262165546417236328125p212 < 1.157818510723454874522531099501065909862518310546875p-946 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010011 #b1100100101000011011010000001010000100010100011001101)))
(assert (= y (fp #b0 #b00001001101 #b0010100001100110110010110011111001000010101110101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
