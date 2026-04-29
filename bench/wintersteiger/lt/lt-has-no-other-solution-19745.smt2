(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.811019362984607194988484479836188256740570068359375p-490 {+ 3652506500927734 -490 (5.66533e-148)}
; Y = 1.334266009512167006079152997699566185474395751953125p934 {+ 1505400275881618 934 (1.93757e+281)}
; 1.811019362984607194988484479836188256740570068359375p-490 < 1.334266009512167006079152997699566185474395751953125p934 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000010101 #b1100111110011110111101110000100001110001000011110110)))
(assert (= y (fp #b0 #b11110100101 #b0101010110010010011101010000101100000100111010010010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
