(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5871961208383360553142438220675103366374969482421875p547 {- 2644496231000931 547 (-7.31203e+164)}
; Y = -1.801178850247987295318807809962891042232513427734375p5 {- 3608188771433958 5 (-57.6377)}
; -1.5871961208383360553142438220675103366374969482421875p547 > -1.801178850247987295318807809962891042232513427734375p5 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100010 #b1001011001010010011111000010011101010110101101100011)))
(assert (= y (fp #b1 #b10000000100 #b1100110100011010000011101010000000001111110111100110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
