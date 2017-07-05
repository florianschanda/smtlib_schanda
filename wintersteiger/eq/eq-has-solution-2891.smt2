(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.471009462305122195147077945875935256481170654296875p139 {- 2121238038925326 139 (-1.02514e+042)}
; Y = -1.8579512110981475370152793402667157351970672607421875p-946 {- 3863868754603683 -946 (-3.12362e-285)}
; -1.471009462305122195147077945875935256481170654296875p139 = -1.8579512110981475370152793402667157351970672607421875p-946 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001010 #b0111100010010100000100110111110010110101000000001110)))
(assert (= y (fp #b1 #b00001001101 #b1101101110100010101100001100100100111010111010100011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
