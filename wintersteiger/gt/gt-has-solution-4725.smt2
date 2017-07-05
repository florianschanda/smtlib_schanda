(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6555763305366166804333261097781360149383544921875p-921 {- 2952453317917624 -921 (-9.33949e-278)}
; Y = 1.5421851909640029720804932367173023521900177001953125p-104 {+ 2441785023991285 -104 (7.60356e-032)}
; -1.6555763305366166804333261097781360149383544921875p-921 > 1.5421851909640029720804932367173023521900177001953125p-104 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100110 #b1010011111010011110110011011001110101111101110111000)))
(assert (= y (fp #b0 #b01110010111 #b1000101011001100101001100000111110010000110111110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
