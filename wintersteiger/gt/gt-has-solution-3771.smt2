(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.30317335950449741943657500087283551692962646484375p-591 {- 1365371428893116 -591 (-1.60796e-178)}
; Y = 1.5501597352067697510591415266389958560466766357421875p730 {+ 2477699178471459 730 (8.75535e+219)}
; -1.30317335950449741943657500087283551692962646484375p-591 > 1.5501597352067697510591415266389958560466766357421875p730 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110110000 #b0100110110011100110001001111000000010111000110111100)))
(assert (= y (fp #b0 #b11011011001 #b1000110011010111010001001011011001001010000000100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
