(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5023618674818159934858385895495302975177764892578125p-392 {- 2262436719196253 -392 (-1.48942e-118)}
; Y = -1.7454499520968391745867620556964538991451263427734375p749 {- 3357208126486679 749 (-5.16861e+225)}
; -1.5023618674818159934858385895495302975177764892578125p-392 > -1.7454499520968391745867620556964538991451263427734375p749 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110111 #b1000000010011010110010011000111110010111100001011101)))
(assert (= y (fp #b1 #b11011101100 #b1011111011010101110011101101110100001111100010010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
