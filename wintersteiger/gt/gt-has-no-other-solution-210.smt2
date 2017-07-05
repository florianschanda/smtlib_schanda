(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1232586822075472099413673277013003826141357421875p872 {- 555107755260088 872 (-3.53701e+262)}
; Y = -1.07424085397007385012102531618438661098480224609375p790 {- 334351082275292 790 (-6.99517e+237)}
; -1.1232586822075472099413673277013003826141357421875p872 > -1.07424085397007385012102531618438661098480224609375p790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101100111 #b0001111110001101111000011000100100000111100010111000)))
(assert (= y (fp #b1 #b11100010101 #b0001001100000001011100101101011111010100000111011100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
