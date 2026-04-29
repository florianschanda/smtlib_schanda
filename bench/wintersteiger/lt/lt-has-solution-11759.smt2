(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4165392887565289026241543979267589747905731201171875p-737 {- 1875926185629075 -737 (-1.95939e-222)}
; Y = 1.237435476011208290714193935855291783809661865234375p950 {+ 1069314321288614 950 (1.17766e+286)}
; -1.4165392887565289026241543979267589747905731201171875p-737 < 1.237435476011208290714193935855291783809661865234375p950 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011110 #b0110101010100010010100011001111010110101010110010011)))
(assert (= y (fp #b0 #b11110110101 #b0011110011001000100100100100010001100000110110100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
