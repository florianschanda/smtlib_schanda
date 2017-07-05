(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.705289785720529582846438643173314630985260009765625p-803 {- 3176342816159194 -803 (-3.19677e-242)}
; Y = -1.8449755810065482375392775793443433940410614013671875p-628 {- 3805431711758259 -628 (-1.65635e-189)}
; -1.705289785720529582846438643173314630985260009765625p-803 > -1.8449755810065482375392775793443433940410614013671875p-628 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011011100 #b1011010010001101110111110001001111011111010111011010)))
(assert (= y (fp #b1 #b00110001011 #b1101100001010000010100011101011001010111011110110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
