(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2769287759204261956114123677252791821956634521484375p-873 {+ 1247176332043399 -873 (2.02759e-263)}
; Y = 1.48040178755843232494271433097310364246368408203125p-872 {+ 2163537311436276 -872 (4.70136e-263)}
; 1.2769287759204261956114123677252791821956634521484375p-873 < 1.48040178755843232494271433097310364246368408203125p-872 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010110 #b0100011011100100110011011110001111100110010010000111)))
(assert (= y (fp #b0 #b00010010111 #b0111101011111011100111001000111010000000110111110100)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
