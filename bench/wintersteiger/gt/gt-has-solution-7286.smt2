(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2511927659641040033733361269696615636348724365234375p-694 {+ 1131271647194103 -694 (1.52232e-209)}
; Y = 1.6561364733035144336525945618632249534130096435546875p626 {+ 2954975976673899 626 (4.61183e+188)}
; 1.2511927659641040033733361269696615636348724365234375p-694 > 1.6561364733035144336525945618632249534130096435546875p626 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101001001 #b0100000001001110001010110100101011001110101111110111)))
(assert (= y (fp #b0 #b11001110001 #b1010011111111000100011110101011010001101001001101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
