(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2161169692009126119813799959956668317317962646484375p439 {- 973304301961671 439 (-1.72641e+132)}
; Y = -1.7324117169794828186013546655885875225067138671875p652 {- 3298489135670584 652 (-3.23749e+196)}
; -1.2161169692009126119813799959956668317317962646484375p439 M -1.7324117169794828186013546655885875225067138671875p652 == -1.2161169692009126119813799959956668317317962646484375p439
; [HW: -1.2161169692009126119813799959956668317317962646484375p439] 

; mpf : - 973304301961671 439
; mpfd: - 973304301961671 439 (-1.72641e+132) class: Neg. norm. non-zero
; hwf : - 973304301961671 439 (-1.72641e+132) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110110110 #b0011011101010011011100010001001011010100000111000111)))
(assert (= y (fp #b1 #b11010001011 #b1011101101111111010101011001001110100010010100111000)))
(assert (= r (fp #b1 #b10110110110 #b0011011101010011011100010001001011010100000111000111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
