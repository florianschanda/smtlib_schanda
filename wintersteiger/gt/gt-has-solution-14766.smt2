(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.129570218661510860869157113484106957912445068359375p-617 {+ 583532388482294 -617 (2.07685e-186)}
; Y = -1.312777801930874232994028716348111629486083984375p-664 {- 1408625992225648 -664 (-1.71504e-200)}
; 1.129570218661510860869157113484106957912445068359375p-617 > -1.312777801930874232994028716348111629486083984375p-664 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010110 #b0010000100101011100000111000101110101111110011110110)))
(assert (= y (fp #b1 #b00101100111 #b0101000000010010001101001011111000110101001101110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
