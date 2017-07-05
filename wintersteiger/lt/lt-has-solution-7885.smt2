(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8965379489888414266118843443109653890132904052734375p625 {+ 4037647972989655 625 (2.64064e+188)}
; Y = 1.4397696762808618320406139901024289429187774658203125p809 {+ 1980546550227333 809 (4.91541e+243)}
; 1.8965379489888414266118843443109653890132904052734375p625 < 1.4397696762808618320406139901024289429187774658203125p809 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110000 #b1110010110000011100000101101001010000111101011010111)))
(assert (= y (fp #b0 #b11100101000 #b0111000010010100101111101101100101100110000110000101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
