(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6122610376925361475031195368501357734203338623046875p790 {+ 2757378581205579 790 (1.04986e+238)}
; 1.6122610376925361475031195368501357734203338623046875p790 | == 1.6122610376925361475031195368501357734203338623046875p790
; [HW: 1.6122610376925361475031195368501357734203338623046875p790] 

; mpf : + 2757378581205579 790
; mpfd: + 2757378581205579 790 (1.04986e+238) class: Pos. norm. non-zero
; hwf : + 2757378581205579 790 (1.04986e+238) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010101 #b1001110010111101001000111010110110000001001001001011)))
(assert (= r (fp #b0 #b11100010101 #b1001110010111101001000111010110110000001001001001011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
