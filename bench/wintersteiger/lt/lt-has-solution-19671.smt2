(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.49682698148250015179883121163584291934967041015625p-226 {+ 2237509808672196 -226 (1.38801e-068)}
; Y = -1.5326541365934953642380378369125537574291229248046875p258 {- 2398860971079819 258 (-7.09877e+077)}
; 1.49682698148250015179883121163584291934967041015625p-226 < -1.5326541365934953642380378369125537574291229248046875p258 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011101 #b0111111100110000000011011001010100111100110111000100)))
(assert (= y (fp #b1 #b10100000001 #b1000100001011100000001011000000010111111100010001011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
