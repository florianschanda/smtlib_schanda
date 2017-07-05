(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.871920676834793795251243864186108112335205078125p-722 {- 3926781635289808 -722 (-8.48458e-218)}
; Y = 1.173280499398270393385246279649436473846435546875p667 {+ 780385992520624 667 (7.18471e+200)}
; -1.871920676834793795251243864186108112335205078125p-722 > 1.173280499398270393385246279649436473846435546875p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101101 #b1101111100110110001100011000011110110110001011010000)))
(assert (= y (fp #b0 #b11010011010 #b0010110001011100000111000101110111110011001110110000)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
