(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0060463086802380328066419679089449346065521240234375p-106 {+ 27230153519287 -106 (1.24005e-032)}
; Y = -1.452016496840726755834793948451988399028778076171875p671 {- 2035701326737214 671 (-1.42265e+202)}
; 1.0060463086802380328066419679089449346065521240234375p-106 > -1.452016496840726755834793948451988399028778076171875p671 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110010101 #b0000000110001100010000000011101000001011000010110111)))
(assert (= y (fp #b1 #b11010011110 #b0111001110110111010110100110011100101110111100111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
