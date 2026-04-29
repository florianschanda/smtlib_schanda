(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4215118563097355330882010093773715198040008544921875p295 {- 1898320639008771 295 (-9.04897e+088)}
; Y = -1.9681323838306663542851993042859248816967010498046875p482 {- 4360080643065099 482 (-2.45761e+145)}
; -1.4215118563097355330882010093773715198040008544921875p295 = -1.9681323838306663542851993042859248816967010498046875p482 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100110 #b0110101111101000001100110111010110111010000000000011)))
(assert (= y (fp #b1 #b10111100001 #b1111011111010111100001100001111011000000010100001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
