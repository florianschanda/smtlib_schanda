(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.269772339142445360948840971104800701141357421875p467 {- 1214946606036784 467 (-4.83876e+140)}
; Y = 1.1961536588625782950856546449358575046062469482421875p-59 {+ 883397544960867 -59 (2.075e-018)}
; -1.269772339142445360948840971104800701141357421875p467 > 1.1961536588625782950856546449358575046062469482421875p-59 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010010 #b0100010100001111110011001100110111111011011100110000)))
(assert (= y (fp #b0 #b01111000100 #b0011001000110111001000000100110111001110001101100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
