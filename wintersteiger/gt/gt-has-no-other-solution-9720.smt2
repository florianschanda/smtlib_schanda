(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9043328794991598584829262108542025089263916015625p-718 {+ 4072753219131304 -718 (1.38104e-216)}
; Y = -1.017337849076401123937785087036900222301483154296875p1010 {- 78082730639886 1010 (-1.11625e+304)}
; 1.9043328794991598584829262108542025089263916015625p-718 > -1.017337849076401123937785087036900222301483154296875p1010 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100110001 #b1110011110000010010111000000111000100101011110101000)))
(assert (= y (fp #b1 #b11111110001 #b0000010001110000010000001101011011000100001000001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
