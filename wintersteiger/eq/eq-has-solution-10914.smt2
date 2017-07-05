(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5954225797760699379068682901561260223388671875p70 {- 2681544908407488 70 (-1.88354e+021)}
; Y = -1.132138013197042436530637132818810641765594482421875p196 {- 595096706995678 196 (-1.13705e+059)}
; -1.5954225797760699379068682901561260223388671875p70 = -1.132138013197042436530637132818810641765594482421875p196 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000101 #b1001100001101101100111010011101101110000001011000000)))
(assert (= y (fp #b1 #b10011000011 #b0010000111010011110010111111110100111101010111011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
