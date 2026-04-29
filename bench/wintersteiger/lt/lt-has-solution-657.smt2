(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2404973170732691567508254593121819198131561279296875p-849 {+ 1083103627554779 -849 (3.30468e-256)}
; Y = 1.2458965688802303706239626990281976759433746337890625p-1006 {+ 1107419695980689 -1006 (1.8168e-303)}
; 1.2404973170732691567508254593121819198131561279296875p-849 < 1.2458965688802303706239626990281976759433746337890625p-1006 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010101110 #b0011110110010001001110110110111110011010111111011011)))
(assert (= y (fp #b0 #b00000010001 #b0011111011110011000100111101100110001010000010010001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
