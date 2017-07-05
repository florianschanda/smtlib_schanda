(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4271621957766853494575798322330228984355926513671875p-601 {- 1923767505726643 -601 (-1.71967e-181)}
; Y = -1.849760835864682650964141430449672043323516845703125p295 {- 3826982583754226 295 (-1.17751e+089)}
; -1.4271621957766853494575798322330228984355926513671875p-601 = -1.849760835864682650964141430449672043323516845703125p295 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100110 #b0110110101011010100000000110110011110010110010110011)))
(assert (= y (fp #b1 #b10100100110 #b1101100110001001111011010001011101110101110111110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
