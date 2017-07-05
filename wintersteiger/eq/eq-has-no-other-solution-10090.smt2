(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6147998955180451474689107271842658519744873046875p810 {+ 2768812580362488 810 (1.10259e+244)}
; Y = -1.9850133239413547681095906227710656821727752685546875p193 {- 4436105638657259 193 (-2.49203e+058)}
; 1.6147998955180451474689107271842658519744873046875p810 = -1.9850133239413547681095906227710656821727752685546875p193 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101001 #b1001110101100011100001101010010011010101100011111000)))
(assert (= y (fp #b1 #b10011000000 #b1111110000101001110101010100110001110011110011101011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
