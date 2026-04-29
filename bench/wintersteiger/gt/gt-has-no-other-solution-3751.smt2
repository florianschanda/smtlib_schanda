(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1968531877348815850581331687862984836101531982421875p-776 {- 886547942929507 -776 (-3.01137e-234)}
; Y = 1.304879705583880333819024599506519734859466552734375p505 {+ 1373056128460390 505 (1.36684e+152)}
; -1.1968531877348815850581331687862984836101531982421875p-776 > 1.304879705583880333819024599506519734859466552734375p505 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011110111 #b0011001001100100111110000111001101101111010001100011)))
(assert (= y (fp #b0 #b10111111000 #b0100111000001100100110001010110010110010011001100110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
